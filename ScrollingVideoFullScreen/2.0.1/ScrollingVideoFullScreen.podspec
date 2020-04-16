Pod::Spec.new do |s|
  s.name  = "ScrollingVideoFullScreen"
  s.version = '2.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ScrollingVideoFullScreen"
  s.description = "ScrollingVideoFullScreen container."
  s.homepage  = "https://github.com/applicaster/ScrollingVideoFullScreen-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ScrollingVideoFullScreen_Framework_2.0.1_6b2b85d22e5f837beae874002fea0462af2d0bff.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ScrollingVideoFullScreen.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.1',
                  }

  s.dependency 'ZappPlugins'
  s.dependency 'ApplicasterSDK'
end
