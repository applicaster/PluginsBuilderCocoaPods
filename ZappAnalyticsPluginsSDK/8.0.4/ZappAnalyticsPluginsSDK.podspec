Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginsSDK"
  s.version = '8.0.4'
  s.platform  = :ios, :tvos
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.summary = "ZappAnalyticsPluginsSDK"
  s.description = "ZappAnalyticsPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginsSDK_Framework_8.0.4_fc63f133e2c6d5902ccf7536a9313369832cc327.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.ios.vendored_frameworks = 'Frameworks/iOS/ZappAnalyticsPluginsSDK.framework'
  s.tvos.vendored_frameworks = 'Frameworks/tvOS/ZappAnalyticsPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 9.1.8'

end
