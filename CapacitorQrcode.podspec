
  Pod::Spec.new do |s|
    s.name = 'CapacitorQrcode'
    s.version = '0.0.1'
    s.summary = 'capacitor plugin to scan qr codes with ionic'
    s.license = 'Mozilla Public License 2.0'
    s.homepage = 'https://github.com/JhonArlex/qr-code-cap'
    s.author = 'Jhon Arlex Ocampo Cifuentes'
    s.source = { :git => 'https://github.com/JhonArlex/qr-code-cap', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end