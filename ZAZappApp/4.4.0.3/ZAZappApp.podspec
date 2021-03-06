Pod::Spec.new do |s|
  s.name  = "ZAZappApp"
  s.version = '4.4.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "ZAZappApp"
  s.description = "ZAZappApp framework."
  s.homepage  = "https://github.com/applicaster/Zapp-iOS.git"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZAZappApp_Framework_4.4.0.3_0d85566eb6c441f61c4acdc426289284fb89ead1.zip"
  }

	s.vendored_frameworks = 'ZAZappApp.framework'

  s.requires_arc = true
  s.xcconfig =  {
                  'SWIFT_VERSION' => '3.2'
              }

  s.dependency 'ApplicasterSDK', '~> 4.15.0'
  s.dependency 'APCrossmates', '~> 1.6.0'
  s.dependency 'APFeed', '~> 3.10.0'
  s.dependency 'ComponentsSDK', '~> 4.12.0'
  s.dependency 'ComponentsStyles', '~> 4.4.0'
  s.dependency 'ZappLayoutsComponentsSDK', '~> 1.6.0'
  s.dependency 'ZappPlugins', '~> 1.13.0'
  s.dependency 'ZappPushPlugins', '~> 2.1.0'
  s.dependency 'ZappHelpers', '~> 1.3.0'
  s.dependency 'ZappRootPlugins', '~> 2.1.0'
  s.dependency 'ZappAppConnector'
  s.dependency 'MBProgressHUD', '~> 0.9.2'
  s.dependency 'google-cast-sdk', '~> 3.5.0'
  s.dependency 'CWStatusBarNotification', '~> 2.3.5'
  s.dependency 'Firebase', '~> 4.5.0'
  s.dependency 'Firebase/RemoteConfig'
end
