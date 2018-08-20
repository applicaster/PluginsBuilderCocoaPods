Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginOpenIDSevenPass"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginOpenIDSevenPass"
  s.description = "ZappLoginPluginOpenIDSevenPass container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginOpenIDSevenPass-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginOpenIDSevenPass_Framework_5.0.1_6654f202a1637e9fe6fcd38cb13dd7653adb63b4.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginOpenIDSevenPass.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappLoginPluginOpenID', '~> 5.0.0'

end
