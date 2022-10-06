import { DependencyDictionary } from "@main/config/container/types";

import { fileNameReaderDependencies } from "./file/FileNamesFromPathReader";

export const infraDependencies: DependencyDictionary[] = [
  ...fileNameReaderDependencies,
];
