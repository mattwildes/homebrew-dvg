cask 'catdv-pro-1219' do
  version :latest
  sha256 'a69c9902f17d2e496024950705a9ddf3798ef1ba7154eccdcd36419d458510f6'
  
  url 'https://dvg-installers.s3.amazonaws.com/CatDV/Professional+Edition/12.1.9/CatDVPro12.1.9.dmg'
  name 'CatDV Pro Client 12.1.9'
  homepage 'https://www.squarebox.com'

  app 'CatDV Pro 12.1/CatDV Pro.app'


  uninstall quit:         'uk.co.squarebox.CatDVPro',
  
            delete:       [
                          '/Applications/CatDV Pro',
                          '~/Library/Application Support/Square Box/'
                          ]
              
end
