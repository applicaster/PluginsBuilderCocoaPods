Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginsSDK"
  s.version = '5.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "ZappBroadcasterPickerPluginsSDK"
  s.description = "ZappBroadcasterPickerPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginsSDK_Framework_5.0.3_55b14e789e099ed6249445f93163020cda217f20.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.1.0'
  s.dependency 'AFNetworking'

end
