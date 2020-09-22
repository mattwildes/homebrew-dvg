cask 'catdv-pro-13012' do
  version :latest
  sha256 '876eaa9ae942e607114eee67e1d992377db6e8b62874b777ffcab12027db0071'
  
  url 'https://dvg-installers.s3.amazonaws.com/CatDV/Professional+Edition/13.0.12/CatDVPro13.0.12.dmg'
  name 'CatDV Pro Client 13.0.12'
  homepage 'https://www.squarebox.com'

  app 'CatDV Pro 13.0/CatDV Pro.app'


  uninstall quit:         'uk.co.squarebox.CatDVPro',
  
            delete:       [
                          '/Applications/CatDV Pro',
                          '~/Library/Application Support/Square Box/'
                          ]
              
end
