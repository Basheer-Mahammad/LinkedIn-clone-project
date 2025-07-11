import { IUser } from "../../../authentication/contexts/AuthenticationContextProvider";

export enum Status {
  PENDING = "PENDING",
  ACCEPTED = "ACCEPTED",
}

export interface IConnection {
  id: number;
  author: IUser;
  recipient: IUser;
  status: Status;
  connectionDate: string;
  seen: boolean;
}
