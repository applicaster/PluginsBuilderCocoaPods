Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginsSDK"
  s.version = '6.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginsSDK"
  s.description = "ZappLoginPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginsSDK_Framework_6.0.1_ae8b019e7948562ddd5f032216f022db3245e4aa.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappLoginPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 7.0.0'
  s.dependency 'AFNetworking'

end
