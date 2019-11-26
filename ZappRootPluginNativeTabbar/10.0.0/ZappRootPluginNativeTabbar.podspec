Pod::Spec.new do |s|
  s.name  = "ZappRootPluginNativeTabbar"
  s.version = '10.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappRootPluginNativeTabbar"
  s.description = "ZappRootPluginNativeTabbar container."
  s.homepage  = "https://github.com/applicaster/ZappRootPluginNativeTabbar-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPluginNativeTabbar_Framework_10.0.0_649a48b161eaa598d248113d9d9d7b93d0fe972c.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappRootPluginNativeTabbar.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'UIViewAppearanceSwift'
  s.dependency 'ApplicasterSDK'
  s.dependency 'ZappPlugins'

end
