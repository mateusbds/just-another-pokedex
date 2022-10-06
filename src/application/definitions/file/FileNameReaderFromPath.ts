export abstract class FileNameReaderFromPath {
  abstract getFileNames(path: string): Promise<string[]>;
}

export const FileNameReaderFromPathToken = "FileNameReaderFromPath";
