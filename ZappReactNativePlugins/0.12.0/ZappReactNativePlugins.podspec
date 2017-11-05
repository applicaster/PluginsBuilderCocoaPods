Pod::Spec.new do |s|
  s.name             = "ZappReactNativePlugins"
  s.version = '0.12.0'
  s.summary          = "ZappReactNativePlugins"
  s.description      = <<-DESC
                        ZappReactNativePlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativePlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativePlugins_Framework_0.12.0_6bd17d587130109763b4a7f6b2b6dd570760f59a.zip"
  }
  s.platform     = :ios, '9.0'

  s.requires_arc = true
  s.default_subspec = 'Default'

  #--------------SUBSPECS--------------

  s.subspec 'Default' do |default|
    default.vendored_frameworks = 'ZappReactNativePlugins.framework'
    default.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO',
                  'SWIFT_VERSION' => '3.2'
                }

    default.dependency 'ZappPlugins'
    default.dependency 'ApplicasterSDK'
    default.dependency 'React'
  end

end
