export abstract class PascalCaseTransformer {
  abstract toPascalCase(input: string): string | Promise<string>;
}

export const PascalCaseTransformerToken = "PascalCaseTransformer";
