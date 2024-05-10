#
# Be sure to run `pod lib lint KKDownload.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KKDownload'
  s.version          = '0.1.0'
  s.summary          = 'A short description of KKDownload.'
  s.homepage         = 'https://github.com/ZFHY/KKDownload'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ZFHY' => '18736099531@163.com' }
  s.source           = { :git => 'https://github.com/ZFHY/KKDownload.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.requires_arc = true
  s.static_framework = true
  s.default_subspec = 'Core'
  
#  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
#  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
      
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'armv7 armv7s arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => "armv7 armv7s arm64"
  }

  s.subspec 'Core' do |core|
      core.source_files = 'KKDownload/Classes/Core/**/*'
      core.public_header_files = 'ZFPlayer/Classes/Core/**/*.h'
      core.frameworks = 'UIKit'
  end
  
  # s.resource_bundles = {
  #   'KKDownload' => ['KKDownload/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking'
  s.dependency 'YYModel'
end
