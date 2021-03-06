Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginMixpanel"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginMixpanel"
  s.description = "ZappAnalyticsPluginMixpanel container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginMixpanel-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginMixpanel_Framework_5.0.0_7d4266d475d407b1da36b46805af92ebae574864.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginMixpanel.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'Mixpanel-swift', '~> 2.4.0'
end
