Pod::Spec.new do |s|
  s.name  = "ZAZappApp"
  s.version = '4.3.11'
  s.platform  = :ios, '9.0'
  s.summary = "ZAZappApp"
  s.description = "ZAZappApp framework."
  s.homepage  = "https://github.com/applicaster/Zapp-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZAZappApp_Framework_4.3.11_188c0927109397c3431a5490f750af0851babc1b.zip"
  }

	s.vendored_frameworks = 'ZAZappApp.framework'

  s.requires_arc = true
  s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }

end
