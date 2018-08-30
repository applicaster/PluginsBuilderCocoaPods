Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginForKwese"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappBroadcasterPickerPluginForKwese"
  s.description = "ZappBroadcasterPickerPluginForKwese container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginForKwese-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginForKwese_Framework_5.0.1_1f495a0abaf111a98da249b529e2157d7df951de.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginForKwese.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappBroadcasterPickerPluginsSDK', '~> 5.0.0'

end
