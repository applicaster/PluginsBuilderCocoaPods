Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginDatasourceExtensionsJpost"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginDatasourceExtensionsJpost"
  s.description = "ZappGeneralPluginDatasourceExtensionsJpost container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginDatasourceExtensionsJpost-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginDatasourceExtensionsJpost_Framework_5.0.0_48641de8666e710aefc66130cbf56aa8397c4551.zip"
  }
  s.requires_arc = true
  s.static_framework = true

  s.vendored_frameworks = 'ZappGeneralPluginDatasourceExtensionsJpost.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'

end
