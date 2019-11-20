Pod::Spec.new do |s|
  s.name  = "ZappPushPluginUrbanAirship"
  s.version = '10.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappPushPluginUrbanAirship"
  s.description = "ZappPushPluginUrbanAirship container."
  s.homepage  = "https://github.com/applicaster/ZappPushPluginUrbanAirship-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPluginUrbanAirship_Framework_10.0.0_a82a931579cd0eab12c421aacdb55b8ff0070d42.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.default_subspec = 'Base'

  s.subspec 'Base' do |base|
    base.vendored_frameworks = 'ZappPushPluginUrbanAirship.framework'

    base.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

    base.dependency 'UrbanAirship-iOS-SDK', '~> 11.1.0'
    base.dependency 'ZappPushPluginsSDK', '~> 10.0.0'
  end

  s.subspec 'UrbanAirshipAppExtensions' do |ua_extensions|
    ua_extensions.xcconfig = {
      'SWIFT_VERSION' => '5.1',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) AIRSHIP_EXTENSIONS_ENABLED=1',
      'OTHER_SWIFT_FLAGS' => '$(inherited) "-D" "AIRSHIP_EXTENSIONS_ENABLED"',
      'ENABLE_BITCODE' => 'YES',
      'OTHER_CFLAGS'  => '-fembed-bitcode'
    }

    ua_extensions.dependency 'UrbanAirship-iOS-AppExtensions'
  end


end
