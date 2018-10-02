Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginSpotlightSubscription"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginSpotlightSubscription"
  s.description = "ZappGeneralPluginSpotlightSubscription container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginSpotlightSubscription-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginSpotlightSubscription_Framework_5.0.1_32149bdbb008dd6816f1747a9fd9dd7f7914f087.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginSpotlightSubscription.framework'

  s.frameworks = 'CoreSpotlight'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'

end
