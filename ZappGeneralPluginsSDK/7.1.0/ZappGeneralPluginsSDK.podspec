Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginsSDK"
  s.version = '7.1.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginsSDK"
  s.description = "ZappGeneralPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginsSDK_Framework_7.1.0_55e1ee35299ab01300052302c5b8bfc932b4a8f8.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappGeneralPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 8.0.0'

end
