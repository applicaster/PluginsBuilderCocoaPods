Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginsSDK"
  s.version = '6.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginsSDK"
  s.description = "ZappAnalyticsPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginsSDK_Framework_6.0.0_03c2d615c2597cc0976555f9bde3e6ea82cb7385.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappAnalyticsPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.1.0'
  s.dependency 'Toaster'

end
