cask 'atto-config-430' do
  version '4.30'
  sha256 '8234b19e89e6dadcadfb431d6a0be3d9e1b51ee21febccf06c857d84e6bdbfe5'

  url "https://dvg-installers.s3.amazonaws.com/Facilis/7.2.1/OSX-Linux+Utilities/osx_app_configtool_430.dmg"
  name 'ATTO ConfigTool'
  homepage 'https://www.atto.com/features/config-tool'

  pkg 'ConfigTool 4.30/Service/attocfgd.pkg'      

  uninstall pkgutil: [
                      'com.attotech.attoConfigtoolService.com.attotech.attocfgd.pkg',
                      'com.attotech.attoConfigtoolService.attocfgd.pkg',
                      'com.attotech.attoConfigtoolService.uninstall.pkg',
                      'com.attotech.attoConfigtoolService.ATTO-TC.pkg',
                      'com.attotech.attoConfigtoolService.ATTO-SMI.pkg',
                      'com.attotech.attoConfigtoolService.ATTO-PRODUCTS-MIB.pkg',
                      'com.attotech.attoConfigtoolService.ATTO-RAID-MIB.pkg',
                      'com.attotech.attoConfigtoolService.gcore.pkg',
                      'com.attotech.attoConfigtoolService.osxdiag.pkg',
                      'com.attotech.attoConfigtoolService.APPLE_LICENSE.pkg'
                      ]
end