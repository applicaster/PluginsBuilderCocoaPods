Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginFirebase"
  s.version = '6.1.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginFirebase"
  s.description = "ZappAnalyticsPluginFirebase container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginFirebase-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginFirebase_Framework_6.1.0_5cf3658d524ee286bc86af35c1a050d8b9a80d8e.zip"
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
