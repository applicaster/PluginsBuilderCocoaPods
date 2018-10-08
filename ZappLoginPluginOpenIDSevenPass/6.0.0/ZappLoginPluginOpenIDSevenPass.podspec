Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginOpenIDSevenPass"
  s.version = '6.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginOpenIDSevenPass"
  s.description = "ZappLoginPluginOpenIDSevenPass container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginOpenIDSevenPass-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginOpenIDSevenPass_Framework_6.0.0_abc2b9f719944761806e1c705f85f4b747c9f1ef.zip"
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
