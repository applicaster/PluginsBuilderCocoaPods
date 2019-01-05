Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginsSDK"
  s.version = '6.3.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAnalyticsPluginsSDK"
  s.description = "ZappAnalyticsPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginsSDK_Framework_6.3.0_922f48ea9f14a32464c1ffd115b394024ed287ef.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.vendored_frameworks = 'ZappAnalyticsPluginsSDK.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins', '~> 7.2.0'
  s.dependency 'Toaster'

end
