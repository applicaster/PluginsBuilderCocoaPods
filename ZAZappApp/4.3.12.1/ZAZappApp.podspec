Pod::Spec.new do |s|
  s.name  = "ZAZappApp"
  s.version = '4.3.12.1'
  s.platform  = :ios, '9.0'
  s.summary = "ZAZappApp"
  s.description = "ZAZappApp framework."
  s.homepage  = "https://github.com/applicaster/Zapp-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZAZappApp_Framework_4.3.12.1_ecda5a9adb0ccf35e444b4b9d1ef84962a319b13.zip"
  }

	s.vendored_frameworks = 'ZAZappApp.framework'

  s.requires_arc = true
  s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }

  s.dependency  'ApplicasterSDK'
  s.dependency  'APCrossmates'
  s.dependency  'ComponentsSDK', '= 4.4.14'
  s.dependency  'ComponentsStyles'
  s.dependency  'ZappLayoutsComponentsSDK'
  s.dependency  'ZappPlugins', '~> 1.11.0'
  s.dependency  'ZappPushPlugins', '~> 1.4.0'
  s.dependency  'ZappHelpers', '~> 1.1.0'
  s.dependency  'ZappRoot', '~> 1.6.0'
  s.dependency  'ZappAppConnector'
  s.dependency  'MBProgressHUD', '~> 0.9.2'
  s.dependency  'google-cast-sdk', '~> 3.5.0'
  s.dependency  'CWStatusBarNotification', '~> 2.3.5'
end
