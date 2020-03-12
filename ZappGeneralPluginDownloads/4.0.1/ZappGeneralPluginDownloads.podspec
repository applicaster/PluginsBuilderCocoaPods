Pod::Spec.new do |s|
  s.name  = "ZappGeneralPluginDownloads"
  s.version = '4.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappGeneralPluginDownloads"
  s.description = "ZappGeneralPluginDownloads container."
  s.homepage  = "https://github.com/applicaster/ZappGeneralPluginDownloads-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPluginDownloads_Framework_4.0.1_1ba71d296545c88fd635443f5c5e15bcc5661806.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'ZappGeneralPluginDownloads.framework'
  s.frameworks = 'AVFoundation'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappGeneralPluginsSDK', '~> 8.0.2'

end
