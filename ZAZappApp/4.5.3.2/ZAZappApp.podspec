Pod::Spec.new do |s|
  s.name  = "ZAZappApp"
  s.version = '4.5.3.2'
  s.platform  = :ios, '9.0'
  s.summary = "ZAZappApp"
  s.description = "ZAZappApp framework."
  s.homepage  = "https://github.com/applicaster/Zapp-iOS.git"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZAZappApp_Framework_4.5.3.2_a7ec7f4fccea8fa66d127ea117d3ce2017592650.zip"
  }

	s.vendored_frameworks = 'ZAZappApp.framework'

  s.requires_arc = true
  s.xcconfig =  {
                  'SWIFT_VERSION' => '4.0'
              }

  s.dependency 'ApplicasterSDK', '~> 4.24.0'
  s.dependency 'APCrossmates', '~> 1.8.0'
  s.dependency 'APFeed', '~> 3.12.0'
  s.dependency 'ComponentsSDK', '~> 4.18.0'
  s.dependency 'ComponentsStyles', '~> 4.5.0'
  s.dependency 'ZappLayoutsComponentsSDK', '~> 1.7.0'
  s.dependency 'ZappPlugins', '~> 1.17.0'
  s.dependency 'ZappPushPlugins', '~> 2.3.0'
  s.dependency 'ZappHelpers', '~> 1.4.0'
  s.dependency 'ZappRootPlugins', '~> 2.2.0'
  s.dependency 'ZappAppConnector'
  s.dependency 'MBProgressHUD', '~> 0.9.2'
  s.dependency 'google-cast-sdk', '~> 3.5.0'
  s.dependency 'CWStatusBarNotification', '~> 2.3.5'
  s.dependency 'Firebase', '~> 4.5.0'
  s.dependency 'Firebase/RemoteConfig'
end
