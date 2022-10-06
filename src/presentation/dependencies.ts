import { DependencyDictionary } from "@main/config/container/types";

import { testResolverDependency } from "./server/resolvers/Test";

export const presentationDependencies: DependencyDictionary[] = [
  ...testResolverDependency,
];
