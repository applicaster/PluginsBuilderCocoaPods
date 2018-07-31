Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginCoolaData"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginCoolaData"
  s.description = "ZappAnalyticsPluginCoolaData container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginCoolaData-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginCoolaData_Framework_5.0.1_7627099cf3b60322661ce18613532a3a6e7e3d82.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginCoolaData.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'OTHER_LDFLAGS' => '$(inherited) -framework "cooladata-ios-sdk"',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'CoolaPod'
end
