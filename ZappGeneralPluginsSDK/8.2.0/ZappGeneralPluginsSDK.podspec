Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginsSDK"
  s.version = '8.2.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginsSDK"
  s.description = "ZappGeneralPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginsSDK_Framework_8.2.0_515d697dd3c017f1e7940423e421d01978f9a4d0.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappGeneralPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 9.1.7'

end
