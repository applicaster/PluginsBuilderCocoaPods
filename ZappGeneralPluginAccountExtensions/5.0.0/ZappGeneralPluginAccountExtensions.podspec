Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginAccountExtensions"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginAccountExtensions"
  s.description = "ZappGeneralPluginAccountExtensions container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginAccountExtensions-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginAccountExtensions_Framework_5.0.0_47b6c828bf42bf24d33f3e83f5913977f2e46924.zip"
  }

  s.requires_arc = true
  s.static_framework = true

  s.vendored_frameworks = 'ZappGeneralPluginAccountExtensions.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'

end
