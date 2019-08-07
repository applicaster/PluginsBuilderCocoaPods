Pod::Spec.new do |s|
  s.name  = "ZappRootPluginsSDK"
  s.version = '9.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappRootPluginsSDK"
  s.description = "ZappRootPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappRootPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPluginsSDK_Framework_9.0.1_075abadb2c04967b0e7cb2f55151ad5c80f7ba34.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappRootPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 9.1.8'
  s.dependency 'ApplicasterSDK', '~> 10.0.8'
  s.dependency 'ZappNavigationBarPluginsSDK', '~> 8.0.1'

end
