cask 'facilis-client-721' do
  version :latest
  sha256 'eb55c0a49f4e86c6e4867c241242c893db50cd19c4dec9e941c14b053380debe'

  url 'https://dvg-installers.s3.amazonaws.com/Facilis/8.0.5/Facilis+Mac+Client+8.0.5.dmg'
  name 'Facilis Mac Client 8.0.5'
  homepage 'https://www.facilis.com'

  installer script: {
                      executable:   "#{staged_path}/Facilis Mac Client 8.0.5.app/Contents/Resources/factbsetup",
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