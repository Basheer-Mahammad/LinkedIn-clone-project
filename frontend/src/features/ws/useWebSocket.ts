import { useContext } from "react";
import { WsContext } from "./WebSocketContextProvider";

export const useWebSocket = () => {
  const context = useContext(WsContext);
  return context;
};
