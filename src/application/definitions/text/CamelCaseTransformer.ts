export abstract class CamelCaseTransformer {
  abstract toCamelCase(input: string): string | Promise<string>;
}

export const CamelCaseTransformerToken = "CamelCaseTransformer";
