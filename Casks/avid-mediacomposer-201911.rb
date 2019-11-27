cask 'avid-mediacomposer-201911' do
  version '2019.11'
  sha256 :no_check

  url 'http://cdn.avid.com/Media_Composer/2019.11/AFFD4835/Media_Composer_2019.11_Mac.dmg'
  name 'Avid Media Composer 2019.11'
  homepage 'https://www.avid.com/media-composer'

  pkg 'Install Media Composer.pkg'      
  
  uninstall quit:    'com.avid.mediacomposer',

            pkgutil: [
                      'com.avid.tmp.avidlink.pkg',
                      'com.avid.tmp.CCS.pkg',
                      'com.avid.osx.utilities.pkg',
                      'com.avid.avidcodecspe.pkg',
                      'com.avid.tmp.PACE.pkg',
                      'com.avid.MediaComposerUninstaller',
                      'com.avid.dmfservice.pkg',
                      'com.avid.Interplay.EditorTranscode.pkg',
                      'com.avid.openio.ndi.pkg',
                      'com.avid.MediaComposerlibrary.pkg',
                      ]
end
