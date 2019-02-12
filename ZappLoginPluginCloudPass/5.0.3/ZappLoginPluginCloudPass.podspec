Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginCloudPass"
  s.version = '5.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginCloudPass"
  s.description = "ZappLoginPluginCloudPass container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginCloudPass-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginCloudPass_Framework_5.0.3_b9298c070fff76800c95a399d116267b9bcc3235.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginCloudPass.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappLoginPluginsSDK', '~> 5.0.0'

end
