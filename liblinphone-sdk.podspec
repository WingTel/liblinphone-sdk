#
# Be sure to run `pod lib lint liblinphone-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'liblinphone-sdk'
  s.version          = '3.16.1'
  s.summary          = 'unofficial repo for liblinphone-sdk.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
repository to have simple dependency for iOS project with liblinphone-sdk
                       DESC

  s.homepage         = 'http://www.linphone.org/technical-corner/liblinphone/downloads'
  s.license          = { :type => 'GPLv2', :file => 'LICENSE' }
  s.author           = { 'Speakus' => 'speakus.net@gmail.com' }
  s.source           = { :http => 'https://github.com/WingTel/liblinphone-sdk/releases/download/3.16.1-pre/liblinphone-iphone-sdk-3.16.1.zip', :tag => s.version.to_s }

  s.platform = :ios
  s.ios.deployment_target = '10.0'

  s.source_files = 'apple-darwin/*.h'

  # s.resource_bundles = {
  #   'liblinphone-sdk' => ['liblinphone-sdk/Assets/*.png']
  # }

  s.preserve_paths = [ 'apple-darwin/include/*', 'apple-darwin/lib/*' ]
  s.public_header_files = 'apple-darwin/include/**/*.h'
#  s.header_dir = 'apple-darwin/include'
  s.header_mappings_dir = 'apple-darwin/include'

  # to ensure framework really used by lib you can use:
  # nm -m liblinphone.a | grep -v 'non-external' | grep _OBJC_CLASS
  # although some more framewroks could be found by next command:
  # nm -m *.a | grep -v 'non-external' | grep _OBJC_CLASS
  s.frameworks = [
    'Foundation',
    'AVFoundation',
    #, 'QuartzCore', 'OpenGLES'
    'UIKit'
  ]
  # s.dependency 'AFNetworking', '~> 2.3'

  # nm -m liblinphone.a | grep -v 'non-external' | grep ' _xml2'
  s.libraries = 'xml2'

  s.vendored_libraries = [
    'apple-darwin/lib/libantlr3c.a',
    'apple-darwin/lib/libavcodec.a',
    'apple-darwin/lib/libavutil.a',
    'apple-darwin/lib/libbcg729.a',
    'apple-darwin/lib/libbctoolbox-tester.a', # absent?
    'apple-darwin/lib/libbctoolbox.a',
    'apple-darwin/lib/libbcunit.a',
    'apple-darwin/lib/libbelcard.a',
    'apple-darwin/lib/libbellesip.a',
    'apple-darwin/lib/libbelr.a',
    'apple-darwin/lib/libbv16.a',
    'apple-darwin/lib/libbzrtp.a',
    'apple-darwin/lib/libcodec2.a',
    'apple-darwin/lib/libcorec.a',
    'apple-darwin/lib/libcunit.a',
    'apple-darwin/lib/libebml2.a',
    'apple-darwin/lib/libgsm.a',
    'apple-darwin/lib/liblinphone.a',
    'apple-darwin/lib/liblinphonetester.a',
    'apple-darwin/lib/libmatroska2.a',
    'apple-darwin/lib/libmbedcrypto.a',
    'apple-darwin/lib/libmbedtls.a',
    'apple-darwin/lib/libmbedx509.a',
    'apple-darwin/lib/libmediastreamer_base.a',
    'apple-darwin/lib/libmediastreamer_voip.a',
    'apple-darwin/lib/libopencore-amrnb.a',
    'apple-darwin/lib/libopencore-amrwb.a',
    'apple-darwin/lib/libopenh264.a',
    'apple-darwin/lib/libopus.a',
    'apple-darwin/lib/libortp.a',
    'apple-darwin/lib/libspeex.a',
    'apple-darwin/lib/libspeexdsp.a',
    'apple-darwin/lib/libsrtp.a',
    'apple-darwin/lib/libswresample.a',
    'apple-darwin/lib/libswscale.a',
    'apple-darwin/lib/libtunnel.a',
    'apple-darwin/lib/libturbojpeg.a',
    'apple-darwin/lib/libvo-amrwbenc.a',
    'apple-darwin/lib/libvpx.a',
    'apple-darwin/lib/libx264.a',
    'apple-darwin/lib/mediastreamer/plugins/libmsamr.a',
    'apple-darwin/lib/mediastreamer/plugins/libmsbcg729.a',
    'apple-darwin/lib/mediastreamer/plugins/libmscodec2.a',
    'apple-darwin/lib/mediastreamer/plugins/libmsopenh264.a',
    'apple-darwin/lib/mediastreamer/plugins/libmssilk.a',
    'apple-darwin/lib/mediastreamer/plugins/libmswebrtc.a',
    'apple-darwin/lib/mediastreamer/plugins/libmsx264.a'
  ]
end
