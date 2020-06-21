Pod::Spec.new do |s|
  s.name  = "EasyTrackingAnalytics"
  s.version = '0.2.1'
  s.platform  = :ios, '10.0'
  s.summary = "EasyTrackingAnalytics"
  s.description = "EasyTrackingAnalytics container."
  s.homepage  = "https://github.com/applicaster-plugins/EasyTrackingAnalytics-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/EasyTrackingAnalytics_Framework_0.2.1_1d44b14de86b428feb7e78abcfbd4bcc4ccccfb6.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'EasyTrackingAnalytics.framework'

  # base dependency
  s.dependency 'ApplicasterSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
              }

  # addtional dependencies

end
