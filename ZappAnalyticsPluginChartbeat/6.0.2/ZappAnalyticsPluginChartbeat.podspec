Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginChartbeat"
  s.version = '6.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "ZappAnalyticsPluginChartbeat"
  s.description = "ZappAnalyticsPluginChartbeat container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginChartbeat-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginChartbeat_Framework_6.0.2_9e053b5aabafa2fcff3d4f2364878d29dfd45cf5.zip"
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
                  'SWIFT_VERSION' => '4.2'
              }

  # addtional dependencies
  s.dependency 'Chartbeat'
end
