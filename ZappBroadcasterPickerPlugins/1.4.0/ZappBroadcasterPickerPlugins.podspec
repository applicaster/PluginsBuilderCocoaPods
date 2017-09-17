Pod::Spec.new do |s|
  s.name             = "ZappBroadcasterPickerPlugins"
  s.version          = '1.4.0'
  s.summary          = "ZappBroadcasterPickerPlugins"
  s.description      = <<-DESC
                        ZappBroadcasterPickerPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappBroadcasterPickerPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPlugins_Framework_1.4.0_7ce2709f875e146d0cc6fec96ba9824f6ff8b256.zip"
  }

  s.vendored_frameworks = 'ZappBroadcasterPickerPlugins.framework'

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs
  s.dependency 'ZappPlugins'
  s.dependency 'ZappHelpers'
  s.dependency 'ApplicasterSDK'

  s.subspec 'Basic' do |basic|
  s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
  end

  #--------------SUBSPECS--------------
  s.subspec 'GermanCountryIP' do |germanCountryIP|
    germanCountryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

  end

  s.subspec 'CountryIP' do |countryIP|
    countryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

  end

  s.subspec 'Localization' do |localization|
    localization.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

  end
end
