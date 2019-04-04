Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginsSDK"
  s.version = '7.0.0'
  s.platform  = :ios, :tvos
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.summary = "ZappAnalyticsPluginsSDK"
  s.description = "ZappAnalyticsPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginsSDK_Framework_7.0.0_86ba5f1536046102288e6b14efca711cba231785.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.ios.vendored_frameworks = 'Frameworks/iOS/ZappAnalyticsPluginsSDK.framework'
  s.tvos.vendored_frameworks = 'Frameworks/tvOS/ZappAnalyticsPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 7.3.0'
  s.ios.dependency 'Toaster'

end
