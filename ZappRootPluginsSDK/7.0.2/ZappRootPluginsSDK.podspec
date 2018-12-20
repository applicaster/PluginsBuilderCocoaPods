Pod::Spec.new do |s|
  s.name  = "ZappRootPluginsSDK"
  s.version = '7.0.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZappRootPluginsSDK"
  s.description = "ZappRootPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappRootPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPluginsSDK_Framework_7.0.2_6b1e8c0d4ad2d08490e8c23ea5a7471fe366187c.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappRootPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 7.0.0'
  s.dependency 'ApplicasterSDK', '~> 8.0.0'
  s.dependency 'ZappNavigationBarPluginsSDK', '~> 6.0.0'

end
