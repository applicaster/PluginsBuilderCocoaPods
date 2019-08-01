Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '6.6.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_6.6.0_649780e1459ccf2f4588d840e0035645dab28177.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginChromecast.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '4.2',
                  }

  s.dependency 'ZappPlugins', '~> 8.2.0'
  s.dependency 'ZappGeneralPluginsSDK', '~> 7.2.0'
  s.dependency 'ZappRootPluginsSDK', '~> 8.1.0'
  s.dependency 'google-cast-sdk', '= 4.3.3'
  s.dependency 'ApplicasterSDK', '~> 9.3.0'
end
