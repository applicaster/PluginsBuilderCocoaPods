Pod::Spec.new do |s|
  s.name             = "ZappLoginPlugins"
  s.version          = '2.3.0'
  s.summary          = "ZappLoginPlugins"
  s.description      = <<-DESC
                        ZappLoginPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappLoginPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPlugins_Framework_2.3.0_362e66aecba90570bf8df89b44594b07a0b1e99a.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
    basic.dependency 'ZappHelpers'
    basic.dependency 'ApplicasterSDK'
    basic.xcconfig =  {
                      'SWIFT_VERSION' => '4.0'
                      }
  end

  #--------------SUBSPECS--------------
  s.subspec 'OpenID' do |openid|
    openid.vendored_frameworks = 'ZappLoginPluginOpenID.framework'
    openid.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

    openid.dependency 'ZappLoginPlugins/Basic'
    openid.dependency 'Locksmith'
    openid.dependency 'AppAuth'
    openid.dependency 'Toaster'
    openid.dependency 'ZappAppConnector'
  end

  # s.subspec 'Hot' do |hot|
  #   hot.vendored_frameworks = 'ZappLoginPluginHot.framework'
  #
  #   hot.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
  #                     'ENABLE_BITCODE' => 'NO',
  #                    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/NagraKitAdapter/NagraSDK/cpak'}
  #
  #   hot.dependency 'ZappLoginPlugins/Basic'
  #   hot.dependency 'NagraKitAdapter'
  # end

  s.subspec 'FacebookLogin' do |facebookLogin|
    facebookLogin.vendored_frameworks = 'ZappLoginPluginFacebook.framework'
    facebookLogin.dependency 'ZappLoginPlugins/Basic'

    facebookLogin.xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'SWIFT_VERSION' => '4.0',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ACCOUNT_KIT=1',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -DACCOUNT_KIT'
    }

    facebookLogin.dependency 'ZappLoginPlugins/Basic'

    facebookLogin.dependency 'ZappAppConnector', '~> 1.3.2'
    facebookLogin.dependency 'ApplicasterUIKit', '~> 1.6.1'
    facebookLogin.dependency 'FBSDKCoreKit', '~> 4.19.0'
  end
end
