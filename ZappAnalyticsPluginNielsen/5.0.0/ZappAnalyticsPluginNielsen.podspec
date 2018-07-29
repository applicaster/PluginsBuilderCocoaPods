Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginNielsen"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginNielsen"
  s.description = "ZappAnalyticsPluginNielsen container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginNielsen-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginNielsen_Framework_5.0.0_64b3e039c8367938c96b67773f778e1d1768d848.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginNielsen.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1'
              }

  # addtional dependencies

end
