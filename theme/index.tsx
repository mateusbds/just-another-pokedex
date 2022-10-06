import { useMemo } from "react";
import {
  CssBaseline,
  ThemeOptions,
  createTheme,
  ThemeProvider,
} from "@mui/material";
import { ptBR } from "@mui/material/locale";

import componentsOverrides from "./overrides";
import { palette } from "./palette";
import typography from "./typography";
import { shadows, customShadows } from "./shadows";

const ThemeConfig = ({ children }: { children: React.ReactNode }) => {
  const themeOptions: ThemeOptions = useMemo(
    () => ({
      palette: palette.light,
      shadows: shadows.light,
      customShadows: customShadows.light,
      typography,
    }),
    []
  );

  const theme = createTheme({ ...themeOptions }, ptBR);
  theme.components = componentsOverrides(theme);

  return (
    <ThemeProvider theme={theme}>
      <CssBaseline />
      {children}
    </ThemeProvider>
  );
};

export default ThemeConfig;
