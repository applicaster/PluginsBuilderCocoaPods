Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginLiftoff"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginLiftoff"
  s.description = "ZappAnalyticsPluginLiftoff container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginLiftoff-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginLiftoff_Framework_5.0.0_be45e451791b16e0e881121009e9e7e21518570d.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginLiftoff.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'Liftoff'
end
