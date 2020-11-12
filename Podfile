platform :ios, '9.0'
inhibit_all_warnings!
use_frameworks!

target 'WeatherApp' do
  pod 'Resolver'
end

workspace 'WeatherApp'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.0'
    end
  end
end
