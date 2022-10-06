import fs from "fs";
import { readdir } from "fs/promises";
import { resolve } from "path";
import { injectable } from "inversify";

import {
  FileNameReaderFromPath,
  FileNameReaderFromPathToken,
} from "@application/definitions/file/FileNameReaderFromPath";
import { DependencyDictionary } from "@main/config/container/types";

@injectable()
export class FileNameReader implements FileNameReaderFromPath {
  async getFileNames(path: string): Promise<string[]> {
    const data = await readdir(path);
    return data.filter((fileName) =>
      fs.lstatSync(resolve(path, fileName)).isDirectory()
    );
  }
}

export const fileNameReaderDependencies: DependencyDictionary[] = [
  {
    token: FileNameReaderFromPathToken,
    implementation: FileNameReader,
  },
];
