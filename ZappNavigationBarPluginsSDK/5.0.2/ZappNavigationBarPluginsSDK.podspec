Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginsSDK"
  s.version = '5.0.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZappNavigationBarPluginsSDK"
  s.description = "ZappNavigationBarPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginsSDK_Framework_5.0.2_d74078c62cc60126190b2dff72d5ae7203c5b25f.zip"
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
