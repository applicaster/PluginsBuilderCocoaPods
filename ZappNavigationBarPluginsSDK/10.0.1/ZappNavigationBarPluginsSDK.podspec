Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginsSDK"
  s.version = '10.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappNavigationBarPluginsSDK"
  s.description = "ZappNavigationBarPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginsSDK_Framework_10.0.1_1c04dad2b38da845e43cb0d5ebdd72fb3623daca.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappNavigationBarPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 11.0.0'

end
