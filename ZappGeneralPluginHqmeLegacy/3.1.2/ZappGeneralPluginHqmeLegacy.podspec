Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginHqmeLegacy"
  s.version = '3.1.2'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginHqmeLegacy"
  s.description = "ZappGeneralPluginHqmeLegacy container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginHqmeLegacy-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginHqmeLegacy_Framework_3.1.2_62f9c8cf2fd5cdc892fb53bbbde89d4aa94ef4c3.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'ZappGeneralPluginHqmeLegacy.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'ApplicasterSDK'

end
