Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginUniversalLinksProsieben"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginUniversalLinksProsieben"
  s.description = "ZappGeneralPluginUniversalLinksProsieben container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginUniversalLinksProsieben-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginUniversalLinksProsieben_Framework_5.0.0_a58c17b1fa1fa79c0a1b52259c1e313974440e6c.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginUniversalLinksProsieben.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'

end
