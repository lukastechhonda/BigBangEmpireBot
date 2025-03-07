import * as config from 'config';
import * as cheerio from 'cheerio';
import * as request from 'request-promise';

import { optionsWeb } from '../models/types/options';

class RequestWeb {
  readonly baseUrl: string;

  constructor() {
    this.baseUrl = config.get('bbe.baseUrl').replace('{SERVER}', config.get('bbe.auth.server'));
  }

  async initConfigFromWeb(): Promise<optionsWeb> {
    const $ = await request.get({
      url: this.baseUrl,
      transform: body => cheerio.load(body),
    });

    const configFromWeb: optionsWeb = {} as optionsWeb;
    const jsCode = $('#flashContainer script').text();

    jsCode.split('\n').forEach((unformattedLine) => {
      const line = unformattedLine.trim();
      const matchUrlParam = line.match(/^url(\w+): "((.+)\?(.+))",?$/);

      if (matchUrlParam) {
        const [, param, fullUrl, , hash] = matchUrlParam;

        switch (param) {
          case 'SwfUi':
            configFromWeb.swfUi = hash;
            break;

          case 'SwfMain':
            configFromWeb.swfMain = hash;
            console.log(`SWF url: ${fullUrl}`);
            break;

          case 'SwfCharacter':
            configFromWeb.swfCharacter = hash;
            break;

          case 'SwfMovieCover':
            configFromWeb.swfMovieCover = hash;
            break;

          default: // do nothing
        }

        return;
      }

      const matchVar = line.match(/^(.+): "(.+)",?$/);

      if (matchVar) {
        switch (matchVar[1]) {
          case 'localeVersion':
            [, , configFromWeb.localeVersion] = matchVar;
            break;

          case 'default_locale':
            [, , configFromWeb.locale] = matchVar;
            break;

          default: // do nothing
        }
      }
    });

    return configFromWeb;
  }
}

export default new RequestWeb();
