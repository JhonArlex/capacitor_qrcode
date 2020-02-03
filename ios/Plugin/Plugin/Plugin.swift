import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(QRCodePlugin)
public class QRCodePlugin: CAPPlugin, QrScannerDelegate {
    var call: CAPPluginCall?
    
    @objc func getCodeQR(_ call: CAPPluginCall) {
        self.call = call
        let qrScanner:QRScannerView = QRScannerView()
        qrScanner.delegate = self
        DispatchQueue.main.async {
          self.bridge.viewController.present(qrScanner, animated: true, completion: nil)
        }
        
        
    }
    
    func didFinishQrCode(_ code: String) {
        self.call?.resolve([
            "code": code
        ])
    }
    
   
}
