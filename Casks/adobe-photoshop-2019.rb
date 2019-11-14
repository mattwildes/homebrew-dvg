cask 'adobe-photoshop-2019' do
  version '20.0.1'
  sha256 'd194db9e2aec50ae64b994b4e4beb2b82da5a92b9e674006b49a5dabde8b2c27'

  url 'http://prdl-download.adobe.com/Photoshop/55E8FC8663C847F08BFBCD8DFE336AE8/1546595985332/AdobePhotoshop20-mul.dmg?red=a'
  name 'Adobe Photoshop CC 2019'
  homepage 'https://www.adobe.com'

  installer script: {
                      executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
                      sudo:         false,
                      print_stderr: false,
                    }
 
  uninstall quit:          'com.adobe.Photoshop',
  
            script:       {
                            executable:   '/Library/Application Support/Adobe/Uninstall/PHSP_20_0_1.app/Contents/MacOS/Uninstaller',
                            must_succeed: false,
                            print_stderr: false,
                          }

end
