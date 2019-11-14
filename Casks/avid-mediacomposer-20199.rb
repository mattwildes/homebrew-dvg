cask 'avid-mediacomposer-20199' do
  version '2019.9'
  sha256 '42925b620a42b42bff238930fab46fb698facac29e1371b3e029f4327fcc4df2'

  url 'http://cdn.avid.com/Media_Composer/2019.9/9A49A734/Media_Composer_2019.9_Mac.dmg'
  name 'Avid Media Composer 2019.9'
  homepage 'https://www.avid.com/media-composer'

  pkg 'Install Media Composer.pkg'      
  
  uninstall quit:    'com.avid.mediacomposer',
<<<<<<< HEAD
   
            pkgutil:  [
=======
  
            script:  [
                      executable: '/Applications/Avid_Uninstallers/Media Composer/Media Composer Uninstaller.app/Contents/Resources/preuninstall',
  
            pkgutil: [
>>>>>>> added preuninstall script
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
