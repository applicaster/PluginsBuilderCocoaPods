Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginMixpanel"
  s.version = '8.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappAnalyticsPluginMixpanel"
  s.description = "ZappAnalyticsPluginMixpanel container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginMixpanel-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginMixpanel_Framework_8.0.0_ac582846a9666abb26baa30b2812165caf5421f1.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginMixpanel.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.0'
              }

  # addtional dependencies
  s.dependency 'Mixpanel-swift', '~> 2.6.2'
end
