import { buildSchemaSync } from "type-graphql";

import container from "@main/config/container";
import { TestResolver } from "@presentation/server/resolvers/Test";

const schema = buildSchemaSync({
  resolvers: [TestResolver],
  container,
});

export default schema;
