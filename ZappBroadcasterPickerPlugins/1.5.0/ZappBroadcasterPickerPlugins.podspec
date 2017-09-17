Pod::Spec.new do |s|
  s.name             = "ZappBroadcasterPickerPlugins"
  s.version          = '1.5.0'
  s.summary          = "ZappBroadcasterPickerPlugins"
  s.description      = <<-DESC
                        ZappBroadcasterPickerPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappBroadcasterPickerPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappBroadcasterPickerPlugins_Framework_1.5.0_5f1c8a44018dc34d91eedd818a4cd140bfc17ee4.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs
  s.dependency 'ZappPlugins'
  s.dependency 'ZappHelpers'
  s.dependency 'ApplicasterSDK'

  s.subspec 'Basic' do |basic|
    basic.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
    basic.vendored_frameworks = 'ZappBroadcasterPickerPlugins.framework'

  end

  #--------------SUBSPECS--------------
  s.subspec 'GermanCountryIP' do |germanCountryIP|
    germanCountryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }
    germanCountryIP.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'CountryIP' do |countryIP|
    countryIP.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }
    countryIP.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'Kwese' do |kwese|
    kwese.public_header_files = 'ZappBroadcasterPickerPlugins/Plugins/BroadcasterForKwese/**/*.h'
    kwese.source_files = 'ZappBroadcasterPickerPlugins/Plugins/BroadcasterForKwese/**/*.{h,m,swift}',
                                    'ZappBroadcasterPickerPlugins/Plugins/Common/**/*.{h,m,swift}'

    kwese.resources = [
                  "ZappBroadcasterPickerPlugins/Plugins/BroadcasterForKwese/**/*.xcassets",
                  "ZappBroadcasterPickerPlugins/Plugins/BroadcasterForKwese/**/*.storyboard",
                  "ZappBroadcasterPickerPlugins/Plugins/BroadcasterForKwese/**/*.xib",
                  "ZappBroadcasterPickerPlugins/Plugins/BroadcasterForKwese/**/*.png"]

    kwese.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    kwese.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end

  s.subspec 'Localization' do |localization|
    localization.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }
    localization.dependency 'ZappBroadcasterPickerPlugins/Basic'
  end
end
