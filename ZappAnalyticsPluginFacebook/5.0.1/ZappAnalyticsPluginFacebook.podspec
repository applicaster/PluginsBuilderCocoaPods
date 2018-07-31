Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginFacebook"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginFacebook"
  s.description = "ZappAnalyticsPluginFacebook container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginFacebook-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginFacebook_Framework_5.0.1_165a1b7ebf9d21211eb2e6b9342dff7fbd63843b.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginFacebook.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'FBSDKCoreKit', '~> 4.33.0'
end
