import { SimplePaletteColorOptions } from "@mui/material";
import {
  ColorPartial,
  TypeAction,
  TypeBackground,
  TypeText,
  PaletteOptions,
} from "@mui/material/styles/createPalette";

export const primary: SimplePaletteColorOptions = {
  main: "#5D64C0",
  light: "#6C72C6",
  dark: "#4F56BA",
};

export const secondary: SimplePaletteColorOptions = {
  main: "#A6C9B5",
  light: "#B3D0C0",
  dark: "#9AC1AB",
};

export const error: SimplePaletteColorOptions = {
  main: "#F32B4C",
  light: "#F43E5C",
  dark: "#E70D32",
};

export const warning: SimplePaletteColorOptions = {
  main: "#F9FF85",
  light: "#FAFF99",
  dark: "#F8FF70",
};

export const info: SimplePaletteColorOptions = {
  main: "#047777",
  light: "#058A8A",
  dark: "#046262",
};

export const success: SimplePaletteColorOptions = {
  main: "#6C9D7C",
  light: "#78A587",
  dark: "#629372",
};

export const grey: ColorPartial = {
  50: "#FAFAFA",
  100: "#F9FAFB",
  200: "#F4F6F8",
  300: "#DFE3E8",
  400: "#C4CDD5",
  500: "#919EAB",
  600: "#637381",
  700: "#454F5B",
  800: "#212B36",
  900: "#161C24",
  A100: "#f5f5f5",
  A200: "#eeeeee",
  A400: "#bdbdbd",
  A700: "#616161",
} as const;

export const text: Partial<TypeText> = {
  primary: "rgba(0, 0, 0, 0.87)",
  secondary: "rgba(0, 0, 0, 0.6)",
  disabled: "rgba(0, 0, 0, 0.38)",
};

export const divider = "rgba(0, 0, 0, 0.12)";

export const background: Partial<TypeBackground> = {
  paper: "#fff",
  default: "#fff",
};

export const action: Partial<TypeAction> = {
  active: "rgba(0, 0, 0, 0.54)",
  hover: "rgba(0, 0, 0, 0.04)",
  hoverOpacity: 0.04,
  selected: "rgba(0, 0, 0, 0.08)",
  selectedOpacity: 0.08,
  disabled: "rgba(0, 0, 0, 0.26)",
  disabledBackground: "rgba(0, 0, 0, 0.12)",
  disabledOpacity: 0.38,
  focus: "rgba(0, 0, 0, 0.12)",
  focusOpacity: 0.12,
  activatedOpacity: 0.12,
};

export const common = {
  black: "#000",
  white: "#fff",
  primary,
  secondary,
  error,
  warning,
  info,
  success,
  grey,
  text,
  divider,
  background,
  action,
};

export const palette: { light: PaletteOptions; dark: PaletteOptions } = {
  light: {
    ...common,
    mode: "light",
    text: {
      primary: grey[800],
      secondary: grey[600],
      disabled: grey[500],
    },
    background: {
      default: "#fff",
      paper: "#fff",
    },
  },
  dark: {
    ...common,
    mode: "dark",
    text: {
      primary: "#fff",
      secondary: grey[500],
      disabled: grey[600],
    },
    background: {
      default: grey[900],
      paper: grey[800],
    },
  },
};
