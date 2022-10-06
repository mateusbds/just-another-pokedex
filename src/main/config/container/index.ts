import { Container } from "inversify";

import { infraDependencies } from "@infra/dependencies";
import { applicationDependencies } from "@application/dependencies";
import { presentationDependencies } from "@presentation/dependencies";

import { DependencyDictionary } from "./types";

const container = new Container();
const dependencies: DependencyDictionary[] = [
  ...infraDependencies,
  ...applicationDependencies,
  ...presentationDependencies,
];
for (const dependency of dependencies) {
  if (!dependency.token) {
    container.bind(dependency.implementation).toSelf();
    continue;
  }
  if (dependency.implementation) {
    container.bind(dependency.token).to(dependency.implementation);
    continue;
  }
  if (dependency.constant) {
    container.bind(dependency.token).toConstantValue(dependency.constant);
    continue;
  }
  throw new Error("Dependency must have implementation or constant");
}

export default container;
