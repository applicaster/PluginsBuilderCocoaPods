Pod::Spec.new do |s|
  s.name  = "OasisPlayerPlugin"
  s.version = '0.10.0'
  s.platform  = :ios, '10.0'
  s.summary = "OasisPlayerPlugin"
  s.description = "OasisPlayerPlugin container."
  s.homepage  = "https://github.com/applicaster-plugins/OasisPlayerPlugin-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/OasisPlayerPlugin_Framework_0.10.0_9be17b9d23fb21530f53773ead69611d5ab0a563.zip"
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
  s.dependency 'OasisPlayer', '= 12.0.0'
  s.dependency 'google-cast-sdk-no-bluetooth', '= 4.5.0'
  s.dependency 'OasisPlayer/SOMPlugin'
  s.dependency 'SevenOneAds', '= 0.10.4'
  s.dependency 'ZappPlugins'

end
