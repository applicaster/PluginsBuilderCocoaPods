Pod::Spec.new do |s|
  s.name  = "ZappPushPlugins"
  s.version = '1.4.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPlugins"
  s.description = "ZappPushPlugins container."
  s.homepage  = "https://github.com/applicaster/ZappPushPlugins-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPlugins_Framework_1.4.2_93ae7d98fd7401616983f4b9b8ca08a723cebb92.zip"
  }

	s.vendored_frameworks = 'ZappPushPlugins.framework'

  s.requires_arc = true
  s.default_subspec = 'Basic'
  s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
  # required for all subspecs
  s.subspec 'Lite' do |lite|
    lite.dependency 'ZappPlugins', '~> 1.10.0'
    lite.dependency 'ZappHelpers', '~> 1.1.0'
  end

  s.subspec 'Basic' do |basic|
     basic.dependency 'ZappPushPlugins/UrbanAirship'
  end

  #--------------SUBSPECS--------------
  s.subspec 'UrbanAirship' do |ua|
    ua.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    ua.dependency 'ZappPushPlugins/Lite'
    ua.dependency 'UrbanAirship-iOS-SDK', '~>  8.1.6'
  end

end
