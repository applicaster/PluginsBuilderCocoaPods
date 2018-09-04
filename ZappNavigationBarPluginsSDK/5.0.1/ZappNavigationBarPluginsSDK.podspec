Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginsSDK"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappNavigationBarPluginsSDK"
  s.description = "ZappNavigationBarPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginsSDK_Framework_5.0.1_5fbc3dd8e1e79f1678566094f5c59e2a4b2b719d.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappNavigationBarPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.1.0'
  s.dependency 'AFNetworking'

end
