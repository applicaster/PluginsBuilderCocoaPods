Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginByCountryIP"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappBroadcasterPickerPluginByCountryIP"
  s.description = "ZappBroadcasterPickerPluginByCountryIP container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginByCountryIP-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginByCountryIP_Framework_5.0.1_afbae5073c56942d0bc1b02643f576671e76c2cd.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginByCountryIP.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappBroadcasterPickerPluginsSDK', '~> 5.0.0'

end
