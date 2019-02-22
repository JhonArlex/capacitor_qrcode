declare global {
    interface PluginRegistry {
        QRCodePlugin?: QRCodePluginPlugin;
    }
}
export interface QRCodePluginPlugin {
    getCodeQR(): Promise<{
        code: string;
    }>;
}
