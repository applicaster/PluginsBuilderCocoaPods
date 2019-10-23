Pod::Spec.new do |s|
  s.name  = "ZappCrashlogsPluginsSDK"
  s.version = '1.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "ZappCrashlogsPluginsSDK"
  s.description = "ZappCrashlogsPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappCrashlogsPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappCrashlogsPluginsSDK_Framework_1.0.2_b6798b2ee915875e235d2c4afde6e687bf3911d7.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappCrashlogsPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 9.4.0'

end
