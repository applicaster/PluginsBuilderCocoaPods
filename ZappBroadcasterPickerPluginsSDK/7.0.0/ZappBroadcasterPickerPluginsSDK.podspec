Pod::Spec.new do |s|
  s.name  = "ZappBroadcasterPickerPluginsSDK"
  s.version = '7.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappBroadcasterPickerPluginsSDK"
  s.description = "ZappBroadcasterPickerPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappBroadcasterPickerPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPluginsSDK_Framework_7.0.0_88fcb767c4d730a9710b3592d038cc40020ed46b.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappBroadcasterPickerPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 7.0.0'
  s.dependency 'Alamofire'

end
