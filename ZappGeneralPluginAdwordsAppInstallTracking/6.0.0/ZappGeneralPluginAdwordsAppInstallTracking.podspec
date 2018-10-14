Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginAdwordsAppInstallTracking"
  s.version = '6.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginAdwordsAppInstallTracking"
  s.description = "ZappGeneralPluginAdwordsAppInstallTracking container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginAdwordsAppInstallTracking-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginAdwordsAppInstallTracking_Framework_6.0.0_17424fbe5b4632e8ff61557ad562d0d070cd3e85.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.frameworks = 'AdSupport'

  s.vendored_frameworks = 'ZappGeneralPluginAdwordsAppInstallTracking.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'OTHER_LDFLAGS' => '$(inherited) -objc -l"GoogleConversionTracking"',
                'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'
  s.dependency 'GoogleConversionTracking'

end
