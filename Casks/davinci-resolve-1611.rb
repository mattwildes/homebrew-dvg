cask 'davinci-resolve-1611' do
  version :latest
  sha256 '55e711d7172455b778118e20712f75e9695c009acf526c59ca544dd02ea854b6'

  url 'https://dvg-installers.s3.amazonaws.com/Blackmagic+Design/DaVinci+Resolve/16.1.1/DaVinci_Resolve_Studio_16.1.1_Mac.dmg'
  name 'DaVinci Resolve 16.1.1'
  homepage 'https://www.blackmagicdesign.com/products/davinciresolve/'

  pkg 'Install Resolve 16.1.1.pkg'      
  
  uninstall pkgutil: [
                      'com.blackmagic-design.ManifestBlackmagicRawPlayer',
                      'com.blackmagic-design.ManifestPanels',
                      'com.blackmagic-design.Manifest',
                      'com.blackmagic-design.BlackmagicRaw_common',
                      'com.blackmagic-design.DaVinciPanels'
                     ]
end
