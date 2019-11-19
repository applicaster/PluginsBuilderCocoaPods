Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginDefault"
  s.version = '4.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappNavigationBarPluginDefault"
  s.description = "ZappNavigationBarPluginDefault container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginDefault-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginDefault_Framework_4.0.0_5bbebdad79555af29a4222094b13b7b7c7c04cae.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'ZappNavigationBarPluginDefault.framework'


  s.xcconfig =  {
    'SWIFT_VERSION' => '5.1',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'ENABLE_BITCODE' => 'YES',
    'OTHER_CFLAGS'  => '-fembed-bitcode'
  }
  s.dependency 'ZappNavigationBarPluginsSDK', '~> 8.0.1'
end
