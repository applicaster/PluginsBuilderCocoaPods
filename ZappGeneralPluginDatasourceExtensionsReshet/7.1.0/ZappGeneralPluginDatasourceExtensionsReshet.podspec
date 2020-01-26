Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginDatasourceExtensionsReshet"
  s.version = '7.1.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginDatasourceExtensionsReshet"
  s.description = "ZappGeneralPluginDatasourceExtensionsReshet container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginDatasourceExtensionsReshet-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginDatasourceExtensionsReshet_Framework_7.1.0_0072d0f3efb974b53df2f0ed84a6876452ef16fc.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginDatasourceExtensionsReshet.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 11.0.0'
  s.dependency 'AFNetworking'

end
