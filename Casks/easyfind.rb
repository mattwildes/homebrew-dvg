cask 'easyfind' do
  version '4.9.3'
  sha256 'eb57b21fa28a84116072e80a4c19b0340d5879f407e9f16bf606760b19e647ed'
  
  url 'https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/easyfind/4.9.3/EasyFind.app.zip'
  name 'EasyFind 4.9.3'
  homepage 'https://www.devontechnologies.com/apps/freeware'

  app 'EasyFind.app'


  uninstall quit:         'org.grunenberg.EasyFind',
  
            delete:       [
                          '/Applications/EasyFind.app',
                          '~/Library/Application Support/EasyFind/',
                          '~/Library/Preferences/org.grunenberg.EasyFind.plist',
                          ]
            
end