Pod::Spec.new do |s|
  s.name  = "ZappRootPluginNativeTabbar"
  s.version = '9.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "ZappRootPluginNativeTabbar"
  s.description = "ZappRootPluginNativeTabbar container."
  s.homepage  = "https://github.com/applicaster/ZappRootPluginNativeTabbar-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPluginNativeTabbar_Framework_9.0.2_22320fbc95c7816264864a5de9daa3de079f291e.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappRootPluginNativeTabbar.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappRootPluginsSDK'
  s.dependency 'UIViewAppearanceSwift'
  s.dependency 'ApplicasterSDK'
  s.dependency 'ZappNavigationBarPluginsSDK'

end
