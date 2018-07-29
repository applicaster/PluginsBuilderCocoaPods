Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginTalamoos"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginTalamoos"
  s.description = "ZappAnalyticsPluginTalamoos container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginTalamoos-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginTalamoos_Framework_5.0.0_5f4d330a9759ba1ef2fd185d6cce75fd77ffa759.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginTalamoos.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies
  s.dependency 'Alamofire', '~> 4.7.0'
end
