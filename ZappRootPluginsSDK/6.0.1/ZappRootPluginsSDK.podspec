Pod::Spec.new do |s|
  s.name  = "ZappRootPluginsSDK"
  s.version = '6.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappRootPluginsSDK"
  s.description = "ZappRootPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappRootPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPluginsSDK_Framework_6.0.1_3d1a1c7464648d2ac11d7deaae2c7bd7c27bce48.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappRootPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.1.0'
  s.dependency 'ApplicasterSDK'
  s.dependency 'ZappNavigationBarPluginsSDK'

end
