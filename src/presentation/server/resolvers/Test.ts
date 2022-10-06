import { injectable } from "inversify";
import { Query, Resolver } from "type-graphql";

import { DependencyDictionary } from "@main/config/container/types";
import { Pokemon } from "@infra/graphql/typeDefs/Pokemon";

@injectable()
@Resolver(Pokemon)
export class TestResolver {
  @Query((returns) => Pokemon)
  test() {
    return {
      name: "Matt",
    };
  }
}

export const testResolverDependency: DependencyDictionary[] = [
  {
    implementation: TestResolver,
  },
];
