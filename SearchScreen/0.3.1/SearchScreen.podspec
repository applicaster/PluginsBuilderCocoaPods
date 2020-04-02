Pod::Spec.new do |s|
  s.name  = "SearchScreen"
  s.version = '0.3.1'
  s.platform  = :ios, '10.0'
  s.summary = "SearchScreen"
  s.description = "SearchScreen container."
  s.homepage  = "https://github.com/applicaster/SearchScreen-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/SearchScreen_Framework_0.3.1_1208e43022341f156e43c02ca95726eee4a4b284.zip"
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
