Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginGAtvOS"
  s.version = '0.2.0'
  s.swift_version = '5.0'
  s.platform  = :tvos
  s.tvos.deployment_target = "10.0"
  s.summary = "ZappAnalyticsPluginGAtvOS"
  s.description = "ZappAnalyticsPluginGAtvOS container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginGAtvOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginGAtvOS_Framework_0.2.0_6b0538e3b35d33ca86b5365dd107edef062e5611.zip"
  }

  s.requires_arc = true
  s.tvos.vendored_frameworks = 'ZappAnalyticsPluginGAtvOS.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 7.3.0'
  s.dependency 'ZappAnalyticsPluginsSDK', '~> 6.4.0'
  
end
