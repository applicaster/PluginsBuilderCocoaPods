Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginOwa"
  s.version = '5.1.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginOwa"
  s.description = "ZappAnalyticsPluginOwa container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginOwa-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginOwa_Framework_5.1.0_5b06031dcd15ee49429d613efb4116919c667fa0.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginOwa.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'ZappAnalyticsPluginAgof'
end
