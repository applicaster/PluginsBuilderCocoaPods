Pod::Spec.new do |s|
  s.name  = "AdobeAnalytics"
  s.version = '0.0.7'
  s.platform  = :ios, '10.0'
  s.summary = "AdobeAnalytics"
  s.description = "AdobeAnalytics container."
  s.homepage  = "https://github.com/applicaster-plugins/AdobeAnalytics-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/AdobeAnalytics_Framework_0.0.7_c464d028c3cfc891ec974cfbee5557818951a4a2.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'AdobeAnalytics.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK', '= 10.0.0'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
              }

  # addtional dependencies
  s.dependency 'ACPAnalytics'
  s.dependency 'ACPUserProfile'
  s.dependency 'ACPCore'
end
