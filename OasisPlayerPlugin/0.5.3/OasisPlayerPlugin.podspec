Pod::Spec.new do |s|
  s.name  = "OasisPlayerPlugin"
  s.version = '0.5.3'
  s.platform  = :ios, '10.0'
  s.summary = "OasisPlayerPlugin"
  s.description = "OasisPlayerPlugin container."
  s.homepage  = "https://github.com/applicaster-plugins/OasisPlayerPlugin-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/OasisPlayerPlugin_Framework_0.5.3_0358dcf0484586d7879d25c384b8677b86c9e942.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'OasisPlayerPlugin.framework'

  # base dependency
  s.dependency 'ZappPlugins'
  s.dependency 'ApplicasterSDK'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
              }

  # addtional dependencies
  s.dependency 'OasisPlayer'
  s.dependency 'google-cast-sdk-no-bluetooth'

end
