Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginComScore"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginComScore"
  s.description = "ZappAnalyticsPluginComScore container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginComScore-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginComScore_Framework_5.0.0_cb460ec87412a9821e781b79bfbf31a33d95d768.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginComScore.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'ComScore-iOS', '~> 5.7.0'
end
