Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginDatasourceExtensionsReshet"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginDatasourceExtensionsReshet"
  s.description = "ZappGeneralPluginDatasourceExtensionsReshet container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginDatasourceExtensionsReshet-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginDatasourceExtensionsReshet_Framework_5.0.0_5d85218db8c1f82453aafcc8ce2f336b3b8a243c.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginDatasourceExtensionsReshet.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.0.0'
  s.dependency 'AFNetworking'

end
