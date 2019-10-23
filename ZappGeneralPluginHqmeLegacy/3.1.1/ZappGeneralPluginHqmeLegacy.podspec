Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginHqmeLegacy"
  s.version = '3.1.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginHqmeLegacy"
  s.description = "ZappGeneralPluginHqmeLegacy container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginHqmeLegacy-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginHqmeLegacy_Framework_3.1.1_20237bcbeffe141d770e176ac585fb1a96483888.zip"
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
