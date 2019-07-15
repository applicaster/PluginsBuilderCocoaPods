Pod::Spec.new do |s|
  s.name  = "ZappRootPluginNativeTabbar"
  s.version = '8.1.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappRootPluginNativeTabbar"
  s.description = "ZappRootPluginNativeTabbar container."
  s.homepage  = "https://github.com/applicaster/ZappRootPluginNativeTabbar-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPluginNativeTabbar_Framework_8.1.1_b14a81860226b12d8cb302d3b1217ff3b9795f0a.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappRootPluginNativeTabbar.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappRootPluginsSDK'
  s.dependency 'UIViewAppearanceSwift'
  s.dependency 'ApplicasterSDK'
  s.dependency 'ZappNavigationBarPluginsSDK'

end
