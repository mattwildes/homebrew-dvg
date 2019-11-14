cask 'adobe-premiere-2019' do
  version '13.0'
  sha256 'ada13e6e35f7737c3b0daf48afe7efeecb896eaa6167afed0f9fe2369bc9a62d'

  url 'http://prdl-download.adobe.com/Premiere%20Pro/C474E1D5059F4381BE89C87503B0D7AD/1544083366757/AdobePremierePro13AllTrial.dmg?red=a'
  name 'Adobe Premiere Pro CC 2019'
  homepage 'https://www.adobe.com'

  installer script: {
                      executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
                      sudo:         false,
                      print_stderr: false,
                    }
 
  uninstall quit:          'com.adobe.PremierePro.CC13',
  
            script:       {
                            executable:   '/Library/Application Support/Adobe/Uninstall/PPRO_13_0.app/Contents/MacOS/Uninstaller',
                            must_succeed: false,
                            print_stderr: false,
                          }

end
