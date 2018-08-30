Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginLibrarySelector"
  s.version = '5.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "ZappBroadcasterPickerPluginLibrarySelector"
  s.description = "ZappBroadcasterPickerPluginLibrarySelector container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginLibrarySelector-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginLibrarySelector_Framework_5.0.3_62c7a096a99f3bfe111bf0cf559c085f6ddfc90c.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginLibrarySelector.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappBroadcasterPickerPluginsSDK', '~> 5.0.0'

end
