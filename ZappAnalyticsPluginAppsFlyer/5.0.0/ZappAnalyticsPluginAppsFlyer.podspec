Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginAppsFlyer"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginAppsFlyer"
  s.description = "ZappAnalyticsPluginAppsFlyer container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginAppsFlyer-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginAppsFlyer_Framework_5.0.0_d5618dad1bd47ca079adef0b002361aa197cad45.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginAppsFlyer.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # frameworks
  s.frameworks = 'AdSupport'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'OTHER_LDFLAGS' => '$(inherited) -framework "AppsFlyerLib"',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'AppsFlyerFramework'
end
