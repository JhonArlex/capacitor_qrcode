# capacitor_qrcode
Desarollo de un plugin capacitor para detectar codigos qr. 

Este desarrollo adapta el ejemplo de google vision del repositorio https://github.com/googlesamples/android-vision a
capacitor para ser utilizado por una aplicación hecha en ionic.

# Instalación

npm i capacitor_qrcode -s

# Usage

ANDROID And IOS

import 'capacitor_qrcode';
import { Plugins } from '@capacitor/core';

const { QRCodePlugin} = Plugins;

`
async openQr() {
  const code = await QRCodePlugin.getCodeQR();
  alert(code);
}
`