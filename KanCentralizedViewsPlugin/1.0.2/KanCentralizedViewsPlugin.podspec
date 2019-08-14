Pod::Spec.new do |s|
  s.name  = "KanCentralizedViewsPlugin"
  s.version = '1.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "KanCentralizedViewsPlugin"
  s.description = "KanCentralizedViewsPlugin container."
  s.homepage  = "https://github.com/applicaster-plugins/KanCentralizedViewsPlugin-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/KanCentralizedViewsPlugin_Framework_1.0.2_f48840cfab8c0215dc2fa3310347ec09ef35b0a8.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'KanCentralizedViewsPlugin.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.0',
                  }

  s.dependency 'ZappPlugins'
  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'google-cast-sdk', '= 4.3.3'
end
