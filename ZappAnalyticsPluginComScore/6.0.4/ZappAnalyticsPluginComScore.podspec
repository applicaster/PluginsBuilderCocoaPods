Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginComScore"
  s.version = '6.0.4'
  s.platform  = :ios, '10.0'
  s.summary = "ZappAnalyticsPluginComScore"
  s.description = "ZappAnalyticsPluginComScore container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginComScore-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginComScore_Framework_6.0.4_862cec264df30c68d537cdd6cad09e75f16feecd.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginComScore.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2'
              }

  # addtional dependencies
  s.dependency 'ComScore-iOS', '~> 5.7.0'
end
