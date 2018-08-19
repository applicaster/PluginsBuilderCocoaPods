Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginFacebook"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginFacebook"
  s.description = "ZappLoginPluginFacebook container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginFacebook-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginFacebook_Framework_5.0.0_47ec293e09c287a3499ff86e2745e6aba7b62d85.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginFacebook.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappLoginPluginsSDK', '~> 5.0.0'
  s.dependency 'FBSDKCoreKit', '~> 4.33.0'

end
