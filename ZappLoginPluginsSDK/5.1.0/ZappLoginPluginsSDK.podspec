Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginsSDK"
  s.version = '5.1.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginsSDK"
  s.description = "ZappLoginPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginsSDK_Framework_5.1.0_accb19de16cd1193d2105565982c3ab259840ae6.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.1.0'
  s.dependency 'AFNetworking'

end
