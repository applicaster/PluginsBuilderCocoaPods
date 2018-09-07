Pod::Spec.new do |s|
  s.name  = "ZappPushPluginsSDK"
  s.version = '5.1.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPluginsSDK"
  s.description = "ZappPushPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappPushPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPushPluginsSDK_Framework_5.1.2_57ae763081f36c58386f946dcddbb82c2cbf4cb1.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappPushPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 6.1.0'

end
