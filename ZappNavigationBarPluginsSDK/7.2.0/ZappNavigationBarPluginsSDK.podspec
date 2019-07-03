Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginsSDK"
  s.version = '7.2.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappNavigationBarPluginsSDK"
  s.description = "ZappNavigationBarPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginsSDK_Framework_7.2.0_1ae2b726686f38df4510197a66986a117d2c31be.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappNavigationBarPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 8.3.0'

end
