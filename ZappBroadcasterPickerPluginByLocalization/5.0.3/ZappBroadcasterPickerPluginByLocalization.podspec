Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginByLocalization"
  s.version = '5.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "ZappBroadcasterPickerPluginByLocalization"
  s.description = "ZappBroadcasterPickerPluginByLocalization container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginByLocalization-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginByLocalization_Framework_5.0.3_0115921cf6f5a1b7235b1cb52ce89cb9a058efa3.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginByLocalization.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappBroadcasterPickerPluginsSDK', '~> 6.0.0'

end
