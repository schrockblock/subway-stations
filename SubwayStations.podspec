#
# Be sure to run `pod lib lint SubwayStations.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SubwayStations'
  s.version          = '0.1.0'
  s.summary          = 'Provides abstract structure for subway apps'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This provides classes/protocols for use in subway apps.
                       DESC

  s.homepage         = 'https://github.com/schrockblock/subway-stations'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Elliot' => '' }
  s.source           = { :git => 'https://github.com/schrockblock/subway-stations.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/schrockblock'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SubwayStations/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
