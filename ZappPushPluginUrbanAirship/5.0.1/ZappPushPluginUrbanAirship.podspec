Pod::Spec.new do |s|
  s.name  = "ZappPushPluginUrbanAirship"
  s.version = '5.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPluginUrbanAirship"
  s.description = "ZappPushPluginUrbanAirship container."
  s.homepage  = "https://github.com/applicaster/ZappPushPluginUrbanAirship-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPluginUrbanAirship_Framework_5.0.1_ee4054d78c2677ad859edaaaaa23e7d784537aed.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappPushPluginUrbanAirship.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.0.0'

end
