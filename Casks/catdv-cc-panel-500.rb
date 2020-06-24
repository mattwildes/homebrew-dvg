cask 'catdv-cc-panel-500' do
  version '5.0.0'
  sha256 'b007cf78af4c594ad0e83954daf3fe191f9c4cb65457ad8c1cad6b7ad483a57b'

  url "http://squarebox.com/download/CatDVCCPanel#{version}.zip"
  name 'CatDV Advanced Panel for Premiere CC'
  homepage 'http://www.squarebox.com/support/download/#Other%20Products'

  depends_on cask: 'mattwildes/dvg/exmancmd'
  container type: :naked
 
  installer script: {
                       executable:   "/usr/bin/unzip",
                       args:         ["#{staged_path}/CatDVCCPanel#{version}.zip", '-d', "#{staged_path}/"],
                       sudo:         false,
                       print_stderr: true,
                    }
  installer script: {
                       executable:   "/usr/local/Caskroom/exmancmd/latest/Contents/MacOS/ExManCmd",
                       args:         ['--install', "#{staged_path}/CatDVCCPanel#{version}.zxp"],
                       sudo:         true,
                       print_stderr: true,
                     }

  uninstall script:       {
                            executable:   "/usr/local/Caskroom/exmancmd/latest/Contents/MacOS/ExManCmd",
                            args:         ['--remove', "com.squarebox.catdv.CatDVCCPanel"],
                            sudo:         true,
                            print_stderr: true,
                          }

end
