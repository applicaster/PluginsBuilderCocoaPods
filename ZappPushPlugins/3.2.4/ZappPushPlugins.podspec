Pod::Spec.new do |s|
  s.name  = "ZappPushPlugins"
  s.version = '3.2.4'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPlugins"
  s.description = "ZappPushPlugins container."
  s.homepage  = "https://github.com/applicaster/ZappPushPlugins-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPlugins_Framework_3.2.4_9ded7acd03ba280341bb2294455cecc18a44fa61.zip"
  }

  s.requires_arc = true
  s.default_subspec = 'Lite'

  # required for all subspecs
  s.subspec 'Lite' do |lite|
    lite.dependency 'ZappPushPlugins/UrbanAirship'
  end

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins', '~> 4.5.3'
  end
  s.xcconfig =  {
                'SWIFT_VERSION' => '4.1',
                'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
  #--------------SUBSPECS--------------
  s.subspec 'UrbanAirship' do |ua|
    ua.vendored_frameworks = 'ZappPushPluginUrbanAirship.framework'
    ua.dependency 'ZappPushPlugins/Basic'
    ua.dependency 'UrbanAirship-iOS-SDK', '~> 8.6.3'
  end

end
