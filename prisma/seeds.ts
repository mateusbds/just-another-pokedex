import fs from "fs";
import { readdir } from "fs/promises";
import path from "path";
import { fileURLToPath } from "url";

import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// https://github.com/nodejs/help/issues/2907
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const PATH = path.resolve(__dirname, "./json");

type SeedModel = {
  name: string;
  seeded: boolean;
};

const uncapitalizeFirstLetter = (input: string) => {
  return input.charAt(0).toLowerCase() + input.slice(1);
};

const seedingCompleted = (models: SeedModel[]) =>
  models.every((model) => model.seeded);

const readModelData = (pathName: string) => {
  return new Promise<string>((resolve, reject) => {
    const readStream = fs.createReadStream(pathName, { encoding: "utf-8" });
    let data = "";
    readStream.on("data", (chunk: string) => {
      data += chunk;
    });
    readStream.on("end", () => {
      resolve(data);
    });
    readStream.on("error", () => {
      reject();
    });
  });
};

const seeds = async () => {
  const fileNames = await readdir(PATH);
  const modelsToSeed: SeedModel[] = [];
  for (const fileName of fileNames) {
    modelsToSeed.push({
      name: fileName,
      seeded: false,
    });
    // break;
  }
  let index = 0;
  let done = 0;
  let previous = 0;
  let retries = 0;
  let maxRetries = 200;
  const size = modelsToSeed.length;
  console.time("seeding");
  while (!seedingCompleted(modelsToSeed)) {
    const [modelName] = modelsToSeed[index].name.split(".");
    try {
      if (modelsToSeed[index].seeded) continue;
      const name = uncapitalizeFirstLetter(modelName);
      const data = await readModelData(
        path.resolve(PATH, modelsToSeed[index].name)
      );
      await prisma.$transaction(
        async (prisma: any) => {
          await prisma[name].createMany({
            data: JSON.parse(data),
          });
        },
        { maxWait: 100000000, timeout: 100000000 }
      );
      modelsToSeed[index].seeded = true;
      previous = done;
      done += 1;
      retries = 0;
    } catch (e: any) {
      retries += 1;
      console.error(e);
      // console.log(`Error on model ${modelName}. ${e.message}`);
      console.log(`Error, retrying for the ${retries} time`);
      // console.error(e);
    } finally {
      if (index >= size - 1) {
        index = 0;
      } else {
        index++;
      }
      console.log(`Done ${done} of ${size}`);
      if (retries >= maxRetries) break;
      if (done >= size) break;
    }
  }
  console.timeEnd("seeding");
};

seeds().then(() => {
  prisma.$disconnect();
});
