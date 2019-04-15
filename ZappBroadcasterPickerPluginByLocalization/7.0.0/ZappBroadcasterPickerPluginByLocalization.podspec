Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginByLocalization"
  s.version = '7.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappBroadcasterPickerPluginByLocalization"
  s.description = "ZappBroadcasterPickerPluginByLocalization container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginByLocalization-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginByLocalization_Framework_7.0.0_cecc2a9fb098f6d3b65d688a6bb30ae81c7a3be7.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginByLocalization.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappBroadcasterPickerPluginsSDK', '~> 7.0.0'

end
