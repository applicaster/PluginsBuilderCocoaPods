Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '6.4.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_6.4.0_d3f42b57d0b2e66c500033c06dd6a3e2bfeac27d.zip"
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
