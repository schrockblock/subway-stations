#
# Be sure to run `pod lib lint SubwayStations.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SubwayStations'
  s.version          = '0.2.1'
  s.summary          = 'Provides abstract structure for subway apps in Swift'

  s.description      = <<-DESC
This provides classes/protocols for use in subway apps. Most subway app UIs will tell you more or less the same thing about stations, trains, and schedules; this pod makes it easy to abstract how you get that data and build a reusable UI based purely on generalizations.
                       DESC

  s.homepage         = 'https://github.com/schrockblock/subway-stations'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Elliot' => '' }
  s.source           = { :git => 'https://github.com/schrockblock/subway-stations.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/elliot_schrock'

  s.ios.deployment_target = '10.0'

  s.source_files = 'SubwayStations/Classes/**/*'
end
