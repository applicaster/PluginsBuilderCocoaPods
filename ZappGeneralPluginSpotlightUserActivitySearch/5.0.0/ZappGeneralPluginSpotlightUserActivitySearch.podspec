Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginSpotlightUserActivitySearch"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginSpotlightUserActivitySearch"
  s.description = "ZappGeneralPluginSpotlightUserActivitySearch container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginSpotlightUserActivitySearch-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginSpotlightUserActivitySearch_Framework_5.0.0_d498632a6ed53fe8384b67bf402501049176eddf.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.frameworks = 'CoreSpotlight'

  s.vendored_frameworks = 'ZappGeneralPluginSpotlightUserActivitySearch.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.1',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

  s.dependency 'ZappGeneralPluginsSDK'

end
