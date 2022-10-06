import { Field, ObjectType } from "type-graphql";

@ObjectType()
export class Pokemon {
  @Field()
  name!: string;
}
