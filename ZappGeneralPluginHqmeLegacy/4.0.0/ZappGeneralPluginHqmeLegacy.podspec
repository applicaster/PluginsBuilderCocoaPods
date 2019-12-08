Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginHqmeLegacy"
  s.version = '4.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginHqmeLegacy"
  s.description = "ZappGeneralPluginHqmeLegacy container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginHqmeLegacy-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginHqmeLegacy_Framework_4.0.0_ef5095d36da97106bc494fa3d8414b7e490dd2da.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'ZappGeneralPluginHqmeLegacy.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'ApplicasterSDK'

end
