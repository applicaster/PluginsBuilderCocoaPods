Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '6.3.2'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_6.3.2_9e05704bf9c291569031a50283edae49b98cef31.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginChromecast.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '4.2',
                  }

  s.dependency 'ZappPlugins'
  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'ZappRootPluginsSDK'
  s.dependency 'google-cast-sdk', '= 4.3.3'
end
