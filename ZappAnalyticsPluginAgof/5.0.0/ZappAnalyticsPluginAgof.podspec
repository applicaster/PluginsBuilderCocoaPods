Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginAgof"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginAgof"
  s.description = "ZappAnalyticsPluginAgof container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginAgof-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginAgof_Framework_5.0.0_70e8dc435c14898b025f31d874d9c022efea09e7.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginAgof.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # frameworks
  s.frameworks = 'CoreTelephony', 'SystemConfiguration'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'SWIFT_VERSION' => '4.1',
                  'ENABLE_BITCODE' => 'YES',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  # addtional dependencies
  s.dependency 'INFOnlineLibrary', '~> 2.2.0'
end
