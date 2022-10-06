import { Components, Theme } from "@mui/material";

export default function Baseline(theme: Theme): Components<Theme> {
  return {
    MuiCssBaseline: {
      styleOverrides: {
        html: {
          height: "100%",
        },
        body: {
          height: "100%",
        },
        "#__next": {
          height: "100%",
          display: "flex",
          flexDirection: "column",
        },
      },
    },
  };
}
