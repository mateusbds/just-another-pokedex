import Head from "next/head";

interface PageProps {
  title: string;
  children: React.ReactNode;
}

const Page = ({ title, children }: PageProps) => {
  return (
    <>
      <Head>
        <title>{`${title} | Just Another Pokedex`}</title>
      </Head>

      {children}
    </>
  );
};

export default Page;
