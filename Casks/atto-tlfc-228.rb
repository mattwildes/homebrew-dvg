cask 'atto-tlfc-228' do
  version '2.28'
  sha256 'c63d52a6c8ec4ed82350dc82d780d26a8ba4023ea0dc07fa1b313146e56dd7ae'

  url "https://dvg-installers.s3.amazonaws.com/Facilis/7.2.1/Drivers/osx_drv_tlfc16-32_2280f1.dmg"
  name 'ATTO ThunderLink Fibre Channel Driver'
  homepage 'https://www.atto.com/downloads/158'

  pkg 'ATTOThunderLinkFC16_2280f1.pkg'      

  uninstall pkgutil: [
                      'com.ATTO.pkg.ATTOThunderLinkFC16'
                      ]
end