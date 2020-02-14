#
# Be sure to run `pod lib lint KingfisherWebPP.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KingfisherWebPP'
  s.version          = '1.0.0'
  s.summary          = 'A short description of KingfisherWebPP.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/duzhongjieqiji/KingfisherWebPP'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'duzhongjieqiji@163.com' => 'qiji@ksjgs.com' }
  s.source           = { :git => 'https://github.com/duzhongjieqiji/KingfisherWebPP.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  # s.resource_bundles = {
  #   'KingfisherWebPP' => ['KingfisherWebPP/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.ios.deployment_target = '10.0'
    s.tvos.deployment_target = '10.0'
    s.watchos.deployment_target = '3.0'
  #  s.osx.deployment_target = '10.12'

    s.pod_target_xcconfig = {'DEFINES_MODULE' => 'YES'}

    s.source_files = 'KingfisherWebPP/Classes/**/*'
    s.pod_target_xcconfig = {
      'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
    }
    s.tvos.pod_target_xcconfig = {
      'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
    }
    s.osx.pod_target_xcconfig = {
      'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
    }
    s.watchos.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) WEBP_USE_INTRINSICS=1',
      'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
    }

    s.dependency 'Kingfisher'
    s.dependency 'libwebp'

end
