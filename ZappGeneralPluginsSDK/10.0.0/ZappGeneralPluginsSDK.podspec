Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginsSDK"
  s.version = '10.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginsSDK"
  s.description = "ZappGeneralPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginsSDK_Framework_10.0.0_88a5c0e40592c54b2c33f2977a85940b2a1fee8a.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappGeneralPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 11.0.0'

end
