Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginDefault"
  s.version = '3.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappNavigationBarPluginDefault"
  s.description = "ZappNavigationBarPluginDefault container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginDefault-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginDefault_Framework_3.0.1_8ee07f3cb252b2471a9ad7b7497c0284dee204df.zip"
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
