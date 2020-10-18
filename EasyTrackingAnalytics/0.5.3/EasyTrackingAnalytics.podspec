Pod::Spec.new do |s|
  s.name  = "EasyTrackingAnalytics"
  s.version = '0.5.3'
  s.platform  = :ios, '10.0'
  s.summary = "EasyTrackingAnalytics"
  s.description = "EasyTrackingAnalytics container."
  s.homepage  = "https://github.com/applicaster-plugins/EasyTrackingAnalytics-iOS"
  s.license = 'MIT'
        s.author = "Applicaster LTD."
        s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/EasyTrackingAnalytics_Framework_0.5.3_321e9bb2d19cfb9e1e4b96d52cd90d377ba4c4dc.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  
  s.vendored_frameworks = 'EasyTrackingAnalytics.framework'
  s.exclude_files = 'EasyTrackingAnalytics/EasyTrackingAnalytics.h'
  
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1',
                  'OTHER_LDFLAGS' => '$(inherited) -l"GoogleAnalytics" -l"GoogleIDFASupport"'
              }

  s.dependency 'ZappPlugins'
  s.dependency 'EasyTracking/EchoTracker'
  # s.dependency 'EasyTracking/GoogleAnalytics'
  s.dependency 'EasyTracking/INFOnline'
  # s.dependency 'EasyTracking/Nielsen'
  s.dependency 'EasyTracking/Mixpanel'

end