cask 'facilis-client-720' do
  version :latest
  sha256 '463ceb91a8c7a522ee13ffb2c088191832ad5e05a7897be1ebf1224f17bf88e5'

  url 'https://dvg-installers.s3.amazonaws.com/Facilis/7.2.0/Facilis+Mac+Client+7.2.0.dmg'
  name 'Facilis Mac Client 7.2.0'
  homepage 'https://www.facilis.com'

  installer script: {
                      executable:   "#{staged_path}/Facilis Mac Client 7.2.0.app/Contents/Resources/factbsetup",
                      args:         ['install'],
                      sudo:         true,
                      print_stderr: false,
                    }


  uninstall quit:          'com.facilis.factbconsole',
  
            launchctl:    [
                            'com.facilis.factbprofile.plist',
                          ],

            script:       {
                            executable:   '/usr/local/bin/factbcmd',
                            args:         ['uninstall'],
                            sudo:         true,
                            must_succeed: false,
                            print_stderr: false,
                          }
end
