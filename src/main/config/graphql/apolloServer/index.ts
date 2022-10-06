import "reflect-metadata";
import { ApolloServer } from "apollo-server-micro";

import { __dirname } from "@infra/constants";

import schema from "../schema";

const apolloServer = new ApolloServer({ schema });

export default apolloServer;
