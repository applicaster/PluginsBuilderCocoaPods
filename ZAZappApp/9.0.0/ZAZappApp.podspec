Pod::Spec.new do |s|
  s.name  = "ZAZappApp"
  s.version = '9.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZAZappApp"
  s.description = "ZAZappApp framework."
  s.homepage  = "https://github.com/applicaster/Zapp-iOS.git"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZAZappApp_Framework_9.0.0_c38f4a9380bbd76b211b0c3844c52eec3dc082a1.zip"
  }

  s.vendored_frameworks = [
    'ZAZappApp.framework',
    'ZappPlugins.framework',
    'ComponentsSDK.framework',
    'ApplicasterSDK.framework',
    'ApplicasterUIKit.framework',
    'ZappAnalyticsPluginsSDK.framework',
    'ZappLoginPluginsSDK.framework',
    'ZappPushPluginsSDK.framework',
    'ZappBroadcasterPickerPluginsSDK.framework',
    'ZappGeneralPluginsSDK.framework',
    'ZappNavigationBarPluginsSDK.framework',
    'ZappRootPluginsSDK.framework',
    'ZappReactNativeAdapter.framework'
  ]

  s.requires_arc = true
  s.xcconfig =  {
                  'SWIFT_VERSION' => '4.2'
              }

  s.dependency 'MBProgressHUD', '= 1.1.0'
  s.dependency 'google-cast-sdk', '= 4.1.0'
  s.dependency 'CWStatusBarNotification', '= 2.3.5'
  s.dependency 'Firebase', '= 4.12.0'
  s.dependency 'Firebase/RemoteConfig'
  s.dependency 'Firebase/DynamicLinks'
  s.dependency 'Kingfisher', '= 4.8.1'

end
