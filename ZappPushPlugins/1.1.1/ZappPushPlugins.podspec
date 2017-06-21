Pod::Spec.new do |s|
  s.name             = "ZappPushPlugins"
  s.version = '1.1.1'
  s.summary          = "ZappPushPlugins"
  s.description      = <<-DESC
                        ZappPushPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappPushPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "m.vicselboim@applicaster.com" }
  s.source           = { "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPlugins_Framework_1.1.1_77da0ac125e6569df611194e0e0d3625165870fa.zip" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'
  s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
  # required for all subspecs
  s.dependency 'ZappPlugins'
  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPushPlugins/UrbanAirship'
  end

  #--------------SUBSPECS--------------

  s.subspec 'UrbanAirship' do |ua|
    ua.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    ua.dependency 'UrbanAirship-iOS-SDK'
  end

end
