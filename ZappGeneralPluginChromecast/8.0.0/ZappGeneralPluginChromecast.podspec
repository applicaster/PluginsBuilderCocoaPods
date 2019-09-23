Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '8.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_8.0.0_45f0e4d77f616cc052a9449db9710780bf862156.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginChromecast.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.0',
                  }

  s.dependency 'ZappPlugins', '~> 9.3.0'
  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'ZappRootPluginsSDK'
  s.dependency 'google-cast-sdk-no-bluetooth', '= 4.4.4'
  s.dependency 'ApplicasterSDK', '~> 10.3.0'
end
