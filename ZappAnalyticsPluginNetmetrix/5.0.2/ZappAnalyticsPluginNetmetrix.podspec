Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginNetmetrix"
  s.version = '5.0.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginNetmetrix"
  s.description = "ZappAnalyticsPluginNetmetrix container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginNetmetrix-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginNetmetrix_Framework_5.0.2_1648a7660c5105d7ddab302bc3e2f07a12424d4e.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginNetmetrix.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'NETMetrixTrackingClient', '~> 1.1.0'
end
