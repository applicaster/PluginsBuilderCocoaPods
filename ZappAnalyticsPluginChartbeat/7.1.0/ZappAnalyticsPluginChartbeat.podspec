Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginChartbeat"
  s.version = '7.1.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappAnalyticsPluginChartbeat"
  s.description = "ZappAnalyticsPluginChartbeat container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginChartbeat-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginChartbeat_Framework_7.1.0_064505b9f68e5b98ef1986133eb48aefa881b28c.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginChartbeat.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Chartbeat/Chartbeat.framework/Headers/CBTracker.h"',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
              }

  # addtional dependencies
  s.dependency 'Chartbeat'
end
