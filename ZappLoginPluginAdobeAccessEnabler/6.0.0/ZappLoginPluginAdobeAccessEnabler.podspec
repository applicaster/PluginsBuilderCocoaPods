Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginAdobeAccessEnabler"
  s.version = '6.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappLoginPluginAdobeAccessEnabler"
  s.description = "ZappLoginPluginAdobeAccessEnabler container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginAdobeAccessEnabler-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPluginAdobeAccessEnabler_Framework_6.0.0_8c8fbe0641372cd7c1d2ae2a778941538e659261.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappLoginPluginAdobeAccessEnabler.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappLoginPluginsSDK', '~> 5.0.0'
  s.dependency 'AccessEnabler'
end
