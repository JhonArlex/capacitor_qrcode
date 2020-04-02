# capacitor_qrcode
Desarollo de un plugin capacitor para detectar codigos qr. 

Este desarrollo adapta el ejemplo de google vision del repositorio https://github.com/googlesamples/android-vision a
capacitor para ser utilizado por una aplicación hecha en ionic.

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
