Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginChromecast"
  s.version = '6.3.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginChromecast"
  s.description = "ZappGeneralPluginChromecast container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginChromecast-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginChromecast_Framework_6.3.1_6ad688c8d0c3b1f44c3c21faa1c00c6a1f970c19.zip"
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
