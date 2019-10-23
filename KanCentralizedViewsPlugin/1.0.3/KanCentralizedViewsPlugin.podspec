Pod::Spec.new do |s|
  s.name  = "KanCentralizedViewsPlugin"
  s.version = '1.0.3'
  s.platform  = :ios, '10.0'
  s.summary = "KanCentralizedViewsPlugin"
  s.description = "KanCentralizedViewsPlugin container."
  s.homepage  = "https://github.com/applicaster-plugins/KanCentralizedViewsPlugin-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/KanCentralizedViewsPlugin_Framework_1.0.3_97a0975f8ec10977746a08243404e66014088826.zip"
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
