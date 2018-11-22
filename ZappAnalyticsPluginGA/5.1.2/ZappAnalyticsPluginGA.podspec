Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginGA"
  s.version = '5.1.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginGA"
  s.description = "ZappAnalyticsPluginGA container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginGA-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginGA_Framework_5.1.2_df1c642cd4673d2db0b146b7e618a5fc267793ae.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginGA.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # frameworks
  s.frameworks = 'AdSupport', 'CoreData', 'SystemConfiguration'
  s.libraries = 'sqlite3.0', 'z'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited) -l"GoogleAnalytics"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'GoogleAnalytics', '~> 3.17.0'
end
