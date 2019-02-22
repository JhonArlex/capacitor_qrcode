package com.jhon.capacitor_qrcode;

import android.content.Intent;
import android.util.Log;

import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;


@NativePlugin()
public class QRCodePlugin extends Plugin {

    private static final int RC_BARCODE_CAPTURE = 9001;
    private static final String TAG = "BarcodeMain";

    @PluginMethod()
    public void getCodeQR(PluginCall call) {
        Intent intent = new Intent(this.getContext(), BarcodeCaptureActivity.class);
        startActivityForResult(call, intent, RC_BARCODE_CAPTURE);
        intent.putExtra(BarcodeCaptureActivity.AutoFocus, true);
    }

    @Override
    protected void handleOnActivityResult(int requestCode, int resultCode, Intent data) {
        super.handleOnActivityResult(requestCode, resultCode, data);

        PluginCall savedCall = getSavedCall();

        if (savedCall == null) {
            return;
        }
        if (requestCode == RC_BARCODE_CAPTURE) {
            // Do something with the data
            proccessData(savedCall, data);
        }
    }

    public void proccessData(PluginCall call, Intent data) {
        Log.d(TAG, "proccessData: " + data);
    }
}
