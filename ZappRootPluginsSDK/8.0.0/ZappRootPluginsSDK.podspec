Pod::Spec.new do |s|
  s.name  = "ZappRootPluginsSDK"
  s.version = '8.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappRootPluginsSDK"
  s.description = "ZappRootPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappRootPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPluginsSDK_Framework_8.0.0_79dfa2196552026653fbeec01df046c0521fe9a5.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappRootPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 8.0.0'
  s.dependency 'ApplicasterSDK', '~> 9.0.0'
  s.dependency 'ZappNavigationBarPluginsSDK', '~> 7.0.0'

end
