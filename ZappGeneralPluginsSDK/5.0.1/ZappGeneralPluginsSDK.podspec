Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginsSDK"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginsSDK"
  s.description = "ZappGeneralPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginsSDK_Framework_5.0.1_50d893ace70a26ca200f0e9f356f6f61fd844319.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.1.0'

end
