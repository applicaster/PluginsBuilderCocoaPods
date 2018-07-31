Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginLiftoff"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginLiftoff"
  s.description = "ZappAnalyticsPluginLiftoff container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginLiftoff-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginLiftoff_Framework_5.0.1_1ae4fd283b2989b6c4648db0688cde0faab5d7db.zip"
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
