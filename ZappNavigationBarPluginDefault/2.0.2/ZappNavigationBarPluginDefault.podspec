Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginDefault"
  s.version = '2.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "ZappNavigationBarPluginDefault"
  s.description = "ZappNavigationBarPluginDefault container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginDefault-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappNavigationBarPluginDefault_Framework_2.0.2_65957769fa5b37e97a0cf92f346c320848956e97.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'ZappNavigationBarPluginDefault.framework'


  s.xcconfig =  {
    'SWIFT_VERSION' => '5.0',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'ENABLE_BITCODE' => 'YES',
    'OTHER_CFLAGS'  => '-fembed-bitcode'
  }
  s.dependency 'ZappNavigationBarPluginsSDK', '~> 8.0.1'
end
