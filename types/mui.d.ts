import type {} from "@mui/lab/themeAugmentation";
import { CustomShadows } from "@theme/shadows";
export {};

declare module "@mui/material/styles/createPalette" {
  interface SimplePaletteColorOptions {
    darker?: string;
    lighter?: string;
  }
}

declare module "@mui/material/styles/createTheme" {
  interface Theme {
    customShadows?: CustomShadows;
  }
}
