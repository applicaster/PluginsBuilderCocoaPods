Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginByGermanCountryIP"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappBroadcasterPickerPluginByGermanCountryIP"
  s.description = "ZappBroadcasterPickerPluginByGermanCountryIP container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginByGermanCountryIP-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginByGermanCountryIP_Framework_5.0.0_883c5d2c1af9c83ad364a27443c6de0f92479ca5.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginByGermanCountryIP.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappBroadcasterPickerPluginsSDK', '~> 5.0.0'

end
