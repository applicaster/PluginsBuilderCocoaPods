Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginAkamai"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginAkamai"
  s.description = "ZappAnalyticsPluginAkamai container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginAkamai-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginAkamai_Framework_5.0.1_73e1cf9da6b1d17a552f89a65c7143fdd9459e43.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginAkamai.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # frameworks
  s.frameworks = 'MediaPlayer', 'SystemConfiguration', 'CoreMedia'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited) -l"AKAMMediaExtensions-AV"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'Akamai-Analytics', '~> 1.3'
end
