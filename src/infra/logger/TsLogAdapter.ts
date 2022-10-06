import { injectable } from "inversify";
import { Logger as TsLogger } from "tslog";
import { Logger } from "@application/definitions/Logger";

@injectable()
export class TsLogAdapter implements Logger {
  constructor(private readonly logger = new TsLogger()) {}

  debug(...args: unknown[]): void {
    throw new Error("Method not implemented.");
  }
  info(...args: unknown[]): void {
    throw new Error("Method not implemented.");
  }
  warn(...args: unknown[]): void {
    throw new Error("Method not implemented.");
  }
  error(...args: unknown[]): void {
    throw new Error("Method not implemented.");
  }
}
