Pod::Spec.new do |s|
  s.name  = "SearchScreen"
  s.version = '0.1.6'
  s.platform  = :ios, '10.0'
  s.summary = "SearchScreen"
  s.description = "SearchScreen container."
  s.homepage  = "https://github.com/applicaster/SearchScreen-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/SearchScreen_Framework_0.1.6_1dbc1ac4b18c50357f37a6bf5d93c18b42a2a70a.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'SearchScreen.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.1',
                  }

  s.dependency 'ZappPlugins', '~> 11.0.2'
  s.dependency 'ApplicasterSDK', '~> 12.0.0'
end
