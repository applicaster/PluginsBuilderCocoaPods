Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '6.3.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_6.3.0_a81d52e1f68970e474ff1b85d7eb1280524b1500.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginChromecast.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
                    'OTHER_LDFLAGS' => '$(inherited)',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '4.2',
                    'OTHER_CFLAGS'  => '-fembed-bitcode'
                  }

  s.dependency 'ZappGeneralPluginsSDK', '~> 6.1.0'
  s.dependency 'ZappRootPluginsSDK', '~> 7.0.0'
  s.dependency 'google-cast-sdk', '= 4.3.3'
end
