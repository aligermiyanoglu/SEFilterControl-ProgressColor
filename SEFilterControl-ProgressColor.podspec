#
# Be sure to run `pod lib lint SEFilterControl-ProgressColor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SEFilterControl-ProgressColor'
  s.version          = '0.1.0'
  s.summary          = 'This library is a modified version of https://github.com/ShadyElyaski/ios-filter-control. Minor customization to show different color with background'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Thanks you Shady Elyaski for your contribution to open source community. This library is a modified version of https://github.com/ShadyElyaski/ios-filter-control. Minor customization to show different color with background
                       DESC

  s.homepage         = 'https://github.com/aligermiyanoglu/SEFilterControl-ProgressColor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aligermiyanoglu' => 'aligermiyanoglu@gmail.com' }
  s.source           = { :git => 'https://github.com/aligermiyanoglu/SEFilterControl-ProgressColor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SEFilterControl-ProgressColor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SEFilterControl-ProgressColor' => ['SEFilterControl-ProgressColor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
