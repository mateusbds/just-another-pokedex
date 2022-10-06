import type { NextPage } from "next";

import { makeHomeScreen } from "@main/factories/screens/makeHome";

const Home: NextPage = () => {
  return makeHomeScreen();
};

export default Home;
