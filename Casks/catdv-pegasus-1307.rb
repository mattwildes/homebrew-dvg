cask 'catdv-pegasus-1307' do
  version :latest
  sha256 'fa5c9207ed9f58927efd3569fb390ae4e97d535a68b4c5a1e214136895f3c26f'
  
  url 'https://dvg-installers.s3.amazonaws.com/CatDV/Pegasus/13.0.7/CatDVPegasus13.0.7.dmg'
  name 'CatDV Pegasus Client 13.0.7'
  homepage 'https://www.squarebox.com'

  app 'CatDV Pegasus 13.0/CatDV Pegasus.app'


  uninstall quit:         'uk.co.squarebox.CatDVPegasus',
  
            delete:       [
                          '/Applications/CatDV Pegasus 13.0',
                          '~/Library/Application Support/Square Box/'
                          ]
              
end