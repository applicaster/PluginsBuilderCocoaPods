Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '10.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_10.0.0_df53650a34eb4571ec57304defa2fa7801ebf270.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginChromecast.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.1',
                  }

  s.dependency 'ZappPlugins', '~> 11.0.0'
  s.dependency 'ZappGeneralPluginsSDK', '~> 10.0.0'
  s.dependency 'google-cast-sdk-no-bluetooth', '= 4.4.4'
  s.dependency 'ApplicasterSDK', '~> 12.0.0'
end
