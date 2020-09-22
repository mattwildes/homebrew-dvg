cask 'catdv-pegasus-13012' do
  version :latest
  sha256 '186b52e8a6b293e3ef6140275820a24b9e188c5ce9578d9f76686cad62bdd3df'
  
  url 'https://dvg-installers.s3.amazonaws.com/CatDV/Pegasus/13.0.12/CatDVPegasus13.0.12.dmg'
  name 'CatDV Pegasus Client 13.0.12'
  homepage 'https://www.squarebox.com'

  app 'CatDV Pegasus 13.0/CatDV Pegasus.app'


  uninstall quit:         'uk.co.squarebox.CatDVPegasus',
  
            delete:       [
                          '/Applications/CatDV Pegasus 13.0',
                          '~/Library/Application Support/Square Box/'
                          ]
              
end