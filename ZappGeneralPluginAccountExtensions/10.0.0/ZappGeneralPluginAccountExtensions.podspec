Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginAccountExtensions"
  s.version = '10.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginAccountExtensions"
  s.description = "ZappGeneralPluginAccountExtensions container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginAccountExtensions-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginAccountExtensions_Framework_10.0.0_4666188d5322b914c66c04adf015ec5227a24793.zip"
  }

  s.requires_arc = true
  s.static_framework = true

  s.vendored_frameworks = 'ZappGeneralPluginAccountExtensions.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'

end
