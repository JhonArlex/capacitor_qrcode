# capacitor_qrcode
Desarollo de un plugin capacitor para detectar codigos qr. 

Este desarrollo adapta el ejemplo de google vision del repositorio https://github.com/googlesamples/android-vision a
capacitor para ser utilizado por una aplicación hecha en ionic.

## Contribución

<a href="https://www.buymeacoffee.com/jhonarlexo" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

# Instalación

npm i capacitor_qrcode -s

# Insertar class de capacitor code en MainActivity.java en el onCreate

add(QRCodePlugin.class);

# Usage

ANDROID And IOS

import 'capacitor_qrcode';
import { Plugins } from '@capacitor/core';

const { QRCodePlugin} = Plugins;

`
openQr() {
    QRCodePlugin.getCodeQR().then(res => {
      this.getSiteByCode(res.code);
    }).catch(err => {
      console.error(err);
    });
    
}
`
