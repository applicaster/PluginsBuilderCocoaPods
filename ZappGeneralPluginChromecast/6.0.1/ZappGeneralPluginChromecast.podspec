Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '6.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_6.0.1_4e49105726ca20c5abcbe2239aa30304253a1696.zip"
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

  s.dependency 'ZappGeneralPluginsSDK', '~> 6.0.0'
  s.dependency 'ZappRootPluginsSDK', '~> 7.0.0'
  s.dependency 'google-cast-sdk', '= 4.1.0'
end
