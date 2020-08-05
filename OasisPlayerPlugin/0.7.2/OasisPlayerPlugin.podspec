Pod::Spec.new do |s|
  s.name  = "OasisPlayerPlugin"
  s.version = '0.7.2'
  s.platform  = :ios, '10.0'
  s.summary = "OasisPlayerPlugin"
  s.description = "OasisPlayerPlugin container."
  s.homepage  = "https://github.com/applicaster-plugins/OasisPlayerPlugin-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/OasisPlayerPlugin_Framework_0.7.2_3bc6155be27b417e80202f78ac97d8aa3400c3c3.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'OasisPlayerPlugin.framework'

  # base dependency
  s.dependency 'ZappPlugins'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
              }

  # addtional dependencies
  s.dependency 'OasisPlayer'
  s.dependency 'google-cast-sdk-no-bluetooth'
  s.dependency 'OasisPlayer/SOMPlugin'
  s.dependency 'SevenOneAds'

end
