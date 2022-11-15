#
# Be sure to run `pod lib lint AllPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AllPod'
  s.version          = '0.2.2'
  s.summary          = 'A short description of AllPod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
All common snippets for personal use
                       DESC

  s.homepage         = 'https://github.com/tthufo/AllPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tthufo' => 'tthufo@gmail.com' }
  s.source           = { :git => 'https://github.com/tthufo/AllPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '9.0'

s.source_files = 'AllPod/Classes'

s.public_header_files = 'AllPod/Classes/*.h'

s.dependency 'SVProgressHUD'
s.dependency 'Toast', '~> 4.0.0'
s.dependency 'Reachability', '~> 3.2'
s.dependency 'AFNetworking', '~> 4.0.1'
s.dependency 'JSONKit-NoWarning', '~> 1.2'
s.dependency 'SDWebImage', '~> 4.4'
s.dependency 'AVHexColor', '~> 2.0'

end
