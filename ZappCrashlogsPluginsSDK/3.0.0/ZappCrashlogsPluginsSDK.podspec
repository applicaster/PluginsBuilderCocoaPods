Pod::Spec.new do |s|
  s.name  = "ZappCrashlogsPluginsSDK"
  s.version = '3.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappCrashlogsPluginsSDK"
  s.description = "ZappCrashlogsPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappCrashlogsPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappCrashlogsPluginsSDK_Framework_3.0.0_de5c860cec4117d55988d302d20974e25a8179da.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappCrashlogsPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 11.0.0'

end
