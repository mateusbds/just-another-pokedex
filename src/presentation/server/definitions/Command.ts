export abstract class Command<T = any> {
  abstract run(params: T): Promise<void>;
}
