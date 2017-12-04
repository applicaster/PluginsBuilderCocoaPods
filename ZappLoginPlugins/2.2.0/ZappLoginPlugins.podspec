Pod::Spec.new do |s|
  s.name             = "ZappLoginPlugins"
  s.version          = '2.2.0'
  s.summary          = "ZappLoginPlugins"
  s.description      = <<-DESC
                        ZappLoginPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappLoginPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPlugins_Framework_2.2.0_bdde3aef1b514e47904b14137963ec473ae596a9.zip"
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

    facebookLogin.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
    facebookLogin.dependency 'ZappLoginPlugins/Basic'
  end
end
