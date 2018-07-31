Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginChartbeat"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginChartbeat"
  s.description = "ZappAnalyticsPluginChartbeat container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginChartbeat-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginChartbeat_Framework_5.0.1_a39cbce03f96e777292f068a6d1f65edf802bbe1.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginChartbeat.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # frameworks
  s.frameworks = 'CoreGraphics','UIKit','Chartbeat'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Chartbeat/Chartbeat.framework/Headers/CBTracker.h"',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'Chartbeat'
end
