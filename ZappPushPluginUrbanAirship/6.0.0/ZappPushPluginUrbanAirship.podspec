Pod::Spec.new do |s|
  s.name  = "ZappPushPluginUrbanAirship"
  s.version = '6.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPluginUrbanAirship"
  s.description = "ZappPushPluginUrbanAirship container."
  s.homepage  = "https://github.com/applicaster/ZappPushPluginUrbanAirship-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPluginUrbanAirship_Framework_6.0.0_1213e040fc907f98a7a6c6fdfd17e662eb53c2fa.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.default_subspec = 'Base'

  s.subspec 'Base' do |base|
    base.vendored_frameworks = 'ZappPushPluginUrbanAirship.framework'

    base.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

    base.dependency 'UrbanAirship-iOS-SDK', '~> 9.4.0'
    base.dependency 'ZappPushPluginsSDK', '~> 5.0.0'
  end

  s.subspec 'UrbanAirshipAppExtensions' do |ua_extensions|
    ua_extensions.xcconfig = {
      'SWIFT_VERSION' => '4.2',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) AIRSHIP_EXTENSIONS_ENABLED=1',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -DAIRSHIP_EXTENSIONS_ENABLED=1',
      'ENABLE_BITCODE' => 'YES'
    }

    ua_extensions.dependency 'UrbanAirship-iOS-AppExtensions'
  end


end
