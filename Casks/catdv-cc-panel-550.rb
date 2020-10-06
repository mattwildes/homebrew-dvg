cask 'catdv-cc-panel-550' do
  version '5.5.0'
  sha256 'cc7dcefe13541b907c30978a951b62b66d0881f71aad31b80543fb8ec5cf10fe'

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
