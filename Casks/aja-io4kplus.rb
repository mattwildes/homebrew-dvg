cask 'aja-io4kplus' do
  version '15.5'
  sha256 'ef74e1c0050d3577d22b76737e85b1f56f031b7dbec6076d6bee736a93804ad7'

  url "https://www.aja.com/assets/support/files/6593/en/AJA-Desktop-Software_#{version}_macOS-Release.zip"
  name 'AJA Io 4K Plus'
  homepage 'https://www.aja.com/products/io-4k-plus'

  pkg 'AJA_Mac_Retail_15_5_0.pkg'      

  uninstall pkgutil: [
                      'com.aja.pkg.adobe.cc2020.premiere',
                      'com.aja.pkg.adobe.cc2019.premiere',
                      'com.aja.pkg.adobe.cc2020.photoshop',
                      'com.aja.pkg.adobe.cc2018.photoshop',
                      'com.aja.pkg.adobe.cc2015.photoshop',
                      'com.aja.pkg.adobe.common',
                      'com.aja.pkg.adobe.cc.common',
                      'com.aja.pkg.openio',
                      'com.aja.pkg.wirecast',
                      'com.aja.pkg.cmio'
                      ]
end
