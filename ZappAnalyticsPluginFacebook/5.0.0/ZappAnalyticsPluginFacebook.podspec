Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginFacebook"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginFacebook"
  s.description = "ZappAnalyticsPluginFacebook container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginFacebook-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginFacebook_Framework_5.0.0_2e02331ea682281e7e043f74718c39600f1b41f2.zip"
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
