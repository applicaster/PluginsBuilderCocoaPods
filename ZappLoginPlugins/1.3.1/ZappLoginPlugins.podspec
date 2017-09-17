Pod::Spec.new do |s|
  s.name             = "ZappLoginPlugins"
  s.version          = '1.3.1'
  s.summary          = "ZappLoginPlugins"
  s.description      = <<-DESC
                        ZappLoginPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappLoginPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPlugins_Framework_1.3.1_7cb913a49e1872ea34324daf9d82b7ee621b71ff.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
    basic.vendored_frameworks = 'ZappLoginPlugins.framework'
  end

  #--------------SUBSPECS--------------
  s.subspec 'OpenID' do |openid|
    openid.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'SWIFT_VERSION' => '3.0'
                }

    openid.dependency 'ZappLoginPlugins/Basic'
    openid.dependency 'ApplicasterSDK'
    openid.dependency 'Locksmith'
    openid.dependency 'AppAuth'
  end

  s.subspec 'Hot' do |hot|
    hot.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'ENABLE_BITCODE' => 'NO',
                     'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/NagraKitAdapter/NagraSDK/cpak'}

    hot.dependency 'ZappLoginPlugins/Basic'
    hot.dependency 'ApplicasterSDK'
    hot.dependency 'NagraKitAdapter'
  end

  s.subspec 'FacebookLogin' do |facebookLogin|
    facebookLogin.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'SWIFT_VERSION' => '3.0'
                }

    facebookLogin.dependency 'ApplicasterSDK'
  end
end
