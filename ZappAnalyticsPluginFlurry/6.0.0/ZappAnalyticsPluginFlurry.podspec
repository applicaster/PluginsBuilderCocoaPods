Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginFlurry"
  s.version = '6.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappAnalyticsPluginFlurry"
  s.description = "ZappAnalyticsPluginFlurry container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginFlurry-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginFlurry_Framework_6.0.0_7f05f3f7c838ca998e9d770e8122a58f3c141870.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginFlurry.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Chartbeat/Chartbeat.framework/Headers/CBTracker.h"',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2'
              }

  # addtional dependencies
  s.dependency 'Chartbeat'
end
