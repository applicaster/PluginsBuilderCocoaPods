Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginsSDK"
  s.version = '8.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappLoginPluginsSDK"
  s.description = "ZappLoginPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginsSDK_Framework_8.0.1_a0888151cb4044499fa3f4d0a2a8089c2d234727.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappLoginPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 9.1.8'
  s.dependency 'Alamofire'

end
