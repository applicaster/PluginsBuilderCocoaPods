Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginDownloads"
  s.version = '2.0.3'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginDownloads"
  s.description = "ZappGeneralPluginDownloads container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginDownloads-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginDownloads_Framework_2.0.3_1383829a398cc4befa82c2e649bf95fcc4a26340.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'ZappGeneralPluginDownloads.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 8.0.2'

end
