Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginJpost"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappLoginPluginJpost"
  s.description = "ZappLoginPluginJpost container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginJpost-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginJpost_Framework_5.0.0_1eb5d470d5f9fb6617ada483c7d80e5c6e52333b.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginJpost.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappLoginPluginsSDK', '~> 5.0.0'

end
