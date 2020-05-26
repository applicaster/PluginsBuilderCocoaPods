Pod::Spec.new do |s|
  s.name  = "CMPWebview"
  s.version = '0.0.3'
  s.platform  = :ios, '10.0'
  s.summary = "CMPWebview"
  s.description = "CMPWebview container."
  s.homepage  = "https://github.com/applicaster-plugins/CMPWebview-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CMPWebview_Framework_0.0.3_20bfd1377a4a40588f91a2e9cae275841460111c.zip"
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
