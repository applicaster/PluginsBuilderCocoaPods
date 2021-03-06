Pod::Spec.new do |s|
  s.name  = "CMPWebview"
  s.version = '0.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "CMPWebview"
  s.description = "CMPWebview container."
  s.homepage  = "https://github.com/applicaster-plugins/CMPWebview-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CMPWebview_Framework_0.0.1_e7506629c681e1bde9cac194fe7ddfb993f15a07.zip"
  }

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'CMPWebview.framework'

  # base dependency
  s.dependency 'ZappPlugins'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
              }

  # addtional dependencies

end
