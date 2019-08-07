Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '7.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_7.0.2_41eb83050b05963045b80307e63bd128703a688f.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginChromecast.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.0',
                  }

  s.dependency 'ZappPlugins', '~> 9.1.8'
  s.dependency 'ZappGeneralPluginsSDK', '~> 8.0.2'
  s.dependency 'ZappRootPluginsSDK', '~> 9.0.1'
  s.dependency 'google-cast-sdk', '= 4.3.3'
  s.dependency 'ApplicasterSDK', '~> 10.0.8'
end
