import { useContext } from "react";
import { AuthenticationContext } from "./AuthenticationContextProvider";

export function useAuthentication() {
  const context = useContext(AuthenticationContext);
  if (!context) {
    throw new Error("useAuthentication must be used within an AuthenticationContextProvider");
  }
  return context;
}
