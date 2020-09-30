Pod::Spec.new do |s|
  s.name  = "EasyTrackingAnalytics"
  s.version = '0.4.0'
  s.platform  = :ios, '10.0'
  s.summary = "EasyTrackingAnalytics"
  s.description = "EasyTrackingAnalytics container."
  s.homepage  = "https://github.com/applicaster-plugins/EasyTrackingAnalytics-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/EasyTrackingAnalytics_Framework_0.4.0_1d8ba7f0c5ed5c64ff4e80b438c78201a670110a.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'EasyTrackingAnalytics.framework'
  s.exclude_files = 'EasyTrackingAnalytics/EasyTrackingAnalytics.h'
  
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
              }

  s.dependency 'ZappPlugins'
  # s.dependency 'EasyTracking/EchoTracker'
  # s.dependency 'EasyTracking/GoogleAnalytics'
  s.dependency 'EasyTracking/INFOnline'
  # s.dependency 'EasyTracking/Nielsen'
  s.dependency 'EasyTracking/Mixpanel'

end
