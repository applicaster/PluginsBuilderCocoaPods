Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginPacketZoom"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappGeneralPluginPacketZoom"
  s.description = "ZappGeneralPluginPacketZoom container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginPacketZoom-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginPacketZoom_Framework_5.0.0_0ab8230c60017a8030b953b44ac65c7e2b40e65d.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappGeneralPluginPacketZoom.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'OTHER_LDFLAGS' => '$(inherited) -ObjC -framework "PZSpeed"',
                'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.frameworks = 'UIKit', 'CFNetwork', 'CoreLocation', 'SystemConfiguration', 'Security', 'Foundation', 'CoreTelephony'
  s.libraries = 'c++', 'z'

  s.dependency 'ZappGeneralPluginsSDK', '~> 5.0.0'
  s.dependency 'PZSpeed'

end
