cask 'adobe-aftereffects-2019' do
  version '16.0'
  sha256 '17e92ff10ffbe5f12f36bfb6bf2c4ec343170be0ca92530f362894b1e5e19c69'

  url 'http://prdl-download.adobe.com/After%20Effects/EFCFFC34A2A1445EA202AD05824C73D8/1544084495843/AdobeAfterEffects16AllTrial.dmg?red=a'
  name 'Adobe After Effects CC 2019'
  homepage 'https://www.adobe.com'

  installer script: {
                      executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
                      sudo:         false,
                      print_stderr: false,
                    }
 
  uninstall quit:          'com.adobe.AfterEffects',
  
            script:       {
                            executable:   '/Library/Application Support/Adobe/Uninstall/AEFT_16_0.app/Contents/MacOS/Uninstaller',
                            must_succeed: false,
                            print_stderr: false,
                          }

end
