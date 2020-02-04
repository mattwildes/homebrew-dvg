cask 'atto-tlfc-190326' do
  version '2019-03-26'
  sha256 '8e23ebec157250244111f2bc67ced96acae4350ffc2db468f6fe39ddc7c10a26'

  url 'https://dvg-installers.s3.amazonaws.com/Facilis/7.2.1/Firmware/osx_fls_tlfc16-32_190326.dmg'
  name 'ATTO ThunderLink Fibre Channel Firmware'
  homepage 'https://www.atto.com/downloads/158'

  installer script: {
                      executable:   '/Applications/ATTO/ThunderLinkFC8/atflash',
                      args:         ["-f #{staged_path}/flsbundle_tlfc16-32_2019_03_26"],
                      sudo:         true,
                      print_stderr: false,
                    }


  uninstall script:       {
                            executable:   '/Applications/ATTO/ThunderLinkFC8/Uninstall.command',
                            sudo:         true,
                            must_succeed: false,
                            print_stderr: false,
                          }
end