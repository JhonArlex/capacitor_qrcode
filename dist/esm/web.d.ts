import { WebPlugin } from '@capacitor/core';
import { QRCodePluginPlugin } from './definitions';
export declare class QRCodePluginWeb extends WebPlugin implements QRCodePluginPlugin {
    constructor();
    getCodeQR(): Promise<any>;
}
declare const QRCodePlugin: QRCodePluginWeb;
export { QRCodePlugin };
