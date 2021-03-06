Pod::Spec.new do |s|
  s.name  = "ZappPushPlugins"
  s.version = '2.3.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPlugins"
  s.description = "ZappPushPlugins container."
  s.homepage  = "https://github.com/applicaster/ZappPushPlugins-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPlugins_Framework_2.3.1_3e074de0d98c7e5e503f05df1695ff14bf6aa433.zip"
  }

  s.requires_arc = true
  s.default_subspec = 'Lite'

  # required for all subspecs
  s.subspec 'Lite' do |lite|
    lite.dependency 'ZappPushPlugins/UrbanAirship'
  end

  s.subspec 'Basic' do |basic|
    basic.xcconfig =  { 'SWIFT_VERSION' => '4.0' }
    basic.dependency 'ZappPlugins'
    basic.dependency 'ZappHelpers'
  end

  #--------------SUBSPECS--------------
  s.subspec 'UrbanAirship' do |ua|
    ua.vendored_frameworks = 'ZappPushPluginUrbanAirship.framework'
    ua.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    ua.dependency 'ZappPushPlugins/Basic'
    ua.dependency 'UrbanAirship-iOS-SDK', '~> 8.6.3'
  end

end
