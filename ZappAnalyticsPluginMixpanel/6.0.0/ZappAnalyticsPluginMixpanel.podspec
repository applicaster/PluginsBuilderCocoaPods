Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginMixpanel"
  s.version = '6.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginMixpanel"
  s.description = "ZappAnalyticsPluginMixpanel container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginMixpanel-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginMixpanel_Framework_6.0.0_7d557223818635af40d827b06dea1a6f3b832542.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginMixpanel.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2'
              }

  # addtional dependencies
  s.dependency 'Mixpanel-swift', '~> 2.4.0'
end
