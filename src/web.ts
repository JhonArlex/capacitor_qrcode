import { WebPlugin } from '@capacitor/core';
import { QRCodePluginPlugin } from './definitions';

export class QRCodePluginWeb extends WebPlugin implements QRCodePluginPlugin {
  constructor() {
    super({
      name: 'QRCodePlugin',
      platforms: ['web']
    });
  }

  async getCodeQR(): Promise<any> {
   return Promise.resolve();
  }
}

const QRCodePlugin = new QRCodePluginWeb();

export { QRCodePlugin };
