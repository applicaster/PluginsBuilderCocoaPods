Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginCloudPass"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginCloudPass"
  s.description = "ZappLoginPluginCloudPass container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginCloudPass-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginCloudPass_Framework_5.0.0_3ef448468dca0570f577350b56e9e27467ce38aa.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginCloudPass.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappLoginPluginsSDK', '~> 5.0.0'

end
