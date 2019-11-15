cask 'catdv-cc-panel' do
  version '4.1.5'
  sha256 '0db07e27628c676844bac4fb4594b862a7b39359a519e28af32a53833232aa55'

  url "http://squarebox.com/download/CatDVCCPanel#{version}.zxp"
  name 'CatDV Advanced Panel for Premiere CC'
  homepage 'http://www.squarebox.com/download/ReleastNotes.html'

  depends_on cask: 'mattwildes/dvg/exmancmd'
  container type: :naked
 
  installer script: {
                      executable:   "/usr/local/Caskroom/exmancmd/latest/Contents/MacOS/ExManCmd",
                      args:         ['--install', "#{staged_path}/CatDVCCPanel#{version}.zxp"],
                      sudo:         false,
                      print_stderr: true,
                    }

  uninstall script:       {
                            executable:   "/usr/local/Caskroom/exmancmd/latest/Contents/MacOS/ExManCmd",
                            args:         ['--remove', "com.squarebox.catdv.CatDVCCPanel"],
                            sudo:         false,
                            print_stderr: true,
                          }

end
