Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginAgofSurvey"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginAgofSurvey"
  s.description = "ZappGeneralPluginAgofSurvey container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginAgofSurvey-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginAgofSurvey_Framework_5.0.0_c2ddce5e77324785c8ad4415ce840e95d5608413.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.frameworks = 'CoreTelephony'
  s.vendored_frameworks = 'ZappGeneralPluginAgofSurvey.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'OTHER_LDFLAGS' => '$(inherited) -framework "IRSurveyLib"',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '4.1',
                    'OTHER_CFLAGS'  => '-fembed-bitcode'
                  }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'
  s.dependency 'INFOnlineSurvey', '~> 1.8.0'
end
