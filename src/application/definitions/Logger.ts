export abstract class Logger {
  abstract debug(...args: unknown[]): void;

  abstract info(...args: unknown[]): void;

  abstract warn(...args: unknown[]): void;

  abstract error(...args: unknown[]): void;
}

export const LoggerToken = "Logger";
