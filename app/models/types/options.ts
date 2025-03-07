export type optionsConfig = {
  delaySyncTime: number;
  baseUrl: string;
  auth: {
    server: string;
    email: string;
    password: string;
  };
};

export type optionsTelegramBot = {
  token: string;
  self: number;
  port: number;
  baseurl: string;
};

export type optionsWeb = {
  swfUi: string;
  swfMain: string;
  swfCharacter: string;
  swfMovieCover: string;
  localeVersion: string;
  locale: string;
};
