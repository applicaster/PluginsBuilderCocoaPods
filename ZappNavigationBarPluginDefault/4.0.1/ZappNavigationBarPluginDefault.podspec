Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginDefault"
  s.version = '4.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappNavigationBarPluginDefault"
  s.description = "ZappNavigationBarPluginDefault container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginDefault-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginDefault_Framework_4.0.1_c6a6be5abfeec822e4ccaaff5a9ef2aeae2be867.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'ZappNavigationBarPluginDefault.framework'


  s.xcconfig =  {
    'SWIFT_VERSION' => '5.1',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'ENABLE_BITCODE' => 'YES',
    'OTHER_CFLAGS'  => '-fembed-bitcode'
  }
  s.dependency 'ZappNavigationBarPluginsSDK', '~> 10.0.0'
end
