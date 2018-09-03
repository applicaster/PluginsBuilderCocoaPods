Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginDynamicShortcutItems"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginDynamicShortcutItems"
  s.description = "ZappGeneralPluginDynamicShortcutItems container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginDynamicShortcutItems-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginDynamicShortcutItems_Framework_5.0.0_014f5084cbcac14c1839c95588051ed00f46537b.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginDynamicShortcutItems.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'

end
