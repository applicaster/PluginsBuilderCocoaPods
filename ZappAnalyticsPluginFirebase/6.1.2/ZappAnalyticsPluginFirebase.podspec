Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginFirebase"
  s.version = '6.1.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginFirebase"
  s.description = "ZappAnalyticsPluginFirebase container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginFirebase-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginFirebase_Framework_6.1.2_1abe62ff85b66a54efb7201eabca4920d7d0a6f1.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginFirebase.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/Firebase/**',
                  'OTHER_LDFLAGS' => '$(inherited) -objc -framework "FirebaseCore" -framework "FirebaseInstanceID" -framework "FirebaseAnalytics"',
                  'USER_HEADER_SEARCH_PATHS' => '"$(inherited)" "${PODS_ROOT}"/Firebase/**',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2'
              }

  # addtional dependencies
  s.dependency 'Firebase', '= 5.18.0'
end
