Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginsSDK"
  s.version = '5.0.4'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginsSDK"
  s.description = "ZappLoginPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginsSDK_Framework_5.0.4_d2f6a43361105c2cf71fed99206be2b167139ff3.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.0.0'
  s.dependency 'AFNetworking'

end
