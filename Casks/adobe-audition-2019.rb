cask 'adobe-audition-2019' do
  version '12.0'
  sha256 '30e6de4d48c5f6bb218f8a065a889d944d1e1d78b60cdd89f081f08123ede0a2'

  url 'http://prdl-download.adobe.com/Audition/E7E769AC13B345AB84DBF3D259C6F556/1544088274103/AdobeAudition12All.dmg?red=a'
  name 'Adobe Audition CC 2019'
  homepage 'https://www.adobe.com'

  installer script: {
                      executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
                      sudo:         false,
                      print_stderr: false,
                    }
 
  uninstall quit:          'com.adobe.Audition',
  
            script:       {
                            executable:   '/Library/Application Support/Adobe/Uninstall/AUDT_12_0.app/Contents/MacOS/Uninstaller',
                            must_succeed: false,
                            print_stderr: false,
                          }

end
