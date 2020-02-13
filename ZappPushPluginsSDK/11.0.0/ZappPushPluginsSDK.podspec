Pod::Spec.new do |s|
  s.name  = "ZappPushPluginsSDK"
  s.version = '11.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappPushPluginsSDK"
  s.description = "ZappPushPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappPushPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPluginsSDK_Framework_11.0.0_c664d730c1426c47fde2ff19f805b639dac74727.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappPushPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 11.0.0'

end
