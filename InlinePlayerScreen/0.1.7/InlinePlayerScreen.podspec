Pod::Spec.new do |s|
  s.name  = "InlinePlayerScreen"
  s.version = '0.1.7'
  s.platform  = :ios, '10.0'
  s.summary = "InlinePlayerScreen"
  s.description = "InlinePlayerScreen container."
  s.homepage  = "https://github.com/applicaster/InlinePlayerScreen-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/InlinePlayerScreen_Framework_0.1.7_2de1103f5ce37b8be865a4f505127c463a9c82bc.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'InlinePlayerScreen.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.1',
                  }

  s.dependency 'ZappPlugins', '~> 11.0.2'
  s.dependency 'ApplicasterSDK', '~> 12.0.0'
end
