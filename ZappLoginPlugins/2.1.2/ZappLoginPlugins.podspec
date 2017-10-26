Pod::Spec.new do |s|
  s.name             = "ZappLoginPlugins"
  s.version          = '2.1.2'
  s.summary          = "ZappLoginPlugins"
  s.description      = <<-DESC
                        ZappLoginPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappLoginPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPlugins_Framework_2.1.2_d229d89058800d5c51f246b1be61f484aacfa9b3.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
    basic.dependency 'ZappHelpers'
    basic.dependency 'ApplicasterSDK'
  end

  #--------------SUBSPECS--------------
  s.subspec 'OpenID' do |openid|
    openid.vendored_frameworks = 'ZappLoginPluginOpenID.framework'
    openid.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'SWIFT_VERSION' => '3.2'
                }

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

    facebookLogin.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'SWIFT_VERSION' => '3.2'
                }

                facebookLogin.dependency 'ZappLoginPlugins/Basic'
  end
end
