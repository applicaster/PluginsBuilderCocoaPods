Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginByGermanCountryIP"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappBroadcasterPickerPluginByGermanCountryIP"
  s.description = "ZappBroadcasterPickerPluginByGermanCountryIP container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginByGermanCountryIP-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginByGermanCountryIP_Framework_5.0.1_6dd8c20d6c408e66b6000b64a71df0f5639d8013.zip"
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
