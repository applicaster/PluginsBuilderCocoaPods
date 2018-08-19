Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginOpenID"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginOpenID"
  s.description = "ZappLoginPluginOpenID container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginOpenID-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginOpenID_Framework_5.0.1_b76b24b53414116bb35d440c1e62130fec0d3212.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginOpenID.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappLoginPluginsSDK', '~> 5.0.0'
  s.dependency 'Locksmith'
  s.dependency 'AppAuth'
  s.dependency 'Toaster'
end
