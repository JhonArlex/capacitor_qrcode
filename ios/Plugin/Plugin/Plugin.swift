import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(QRCodePlugin)
public class QRCodePlugin: CAPPlugin {
    
    @objc func echo(_ call: CAPPluginCall) {
        
        
        DispatchQueue.main.async {
          self.bridge.viewController.present(QRScannerView, animated: true, completion: nil)
        }
        
        let value = call.getString("value") ?? ""
        call.success([
            "value": value
        ])
    }
}
