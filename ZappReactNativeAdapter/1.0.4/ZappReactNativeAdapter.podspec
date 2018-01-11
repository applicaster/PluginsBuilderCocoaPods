Pod::Spec.new do |s|
  s.name             = "ZappReactNativeAdapter"
  s.version = '1.0.4'
  s.summary          = "ZappReactNativeAdapter"
  s.description      = <<-DESC
                        ZappReactNativeAdapter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativeAdapter-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativeAdapter_Framework_1.0.4_bfe9e9bbde7c550466942a1477101934494eb615.zip"
  }
  s.platform     = :ios, '9.0'

  s.requires_arc = true
  s.default_subspec = 'Default'

  #--------------SUBSPECS--------------

  s.subspec 'Default' do |default|
    default.vendored_frameworks = 'ZappReactNativeAdapter.framework'
    default.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO',
                  'SWIFT_VERSION' => '4.0'
                }

    default.dependency 'ZappPlugins', '~> 1.17.0'
    default.dependency 'ApplicasterSDK', '~> 4.24.0'
    default.dependency 'ZappAppConnector', '~> 1.3.0'
    default.dependency 'React', '~> 0.50.4'
  end

end
