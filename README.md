# capacitor_qrcode
Desarollo de un plugin capacitor para detectar codigos qr. 

Este desarrollo adapta el ejemplo de google vision del repositorio https://github.com/googlesamples/android-vision a
capacitor para ser utilizado por una aplicación hecha en ionic.

# Instalación

npm i capacitor_qrcode -s

#Usage

IOS

Lamentablemente en este momento no se tiene soporte para ios. Eventualmente en un tiempo si alguien desea realizarlo sientase
en la libertad de implementarlo y adaptarlo a ios. Estoy pendiente si alguien lo desea hacer.

ANDROID

Esta version ya se encuentra funcionando.

import 'capacitor_qrcode';
import { Plugins } from '@capacitor/core';

const { QRCodePlugin} = Plugins;

.
.
.
 scan() {
    QRCodePlugin.getCodeQR().then(res => {
      console.log(res);
	  this.presentAlert(res.code);
    });

  }
  
  .
  .
  .
