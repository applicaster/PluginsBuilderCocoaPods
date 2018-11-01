Pod::Spec.new do |s|
  s.name  = "ZappSDK"
  s.version = '10.0.1.4'
  s.platform  = :ios, '9.0'
  s.summary = "ZappSDK"
  s.description = "ZappSDK framework."
  s.homepage  = "https://github.com/applicaster/ZappSDK-iOS.git"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappSDK_Framework_10.0.1.4_49f1217e54fa5d4d215d93dd7db6da287c2a3884.zip"
  }

	s.vendored_frameworks = [
    'ZappSDK.framework',
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

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode',
                'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/Firebase/**',
                'OTHER_LDFLAGS' => '$(inherited) -objc -framework "HockeySDK"  -framework "FirebaseAnalytics" -framework "FirebaseABTesting" -framework "FirebaseDynamicLinks" -framework "FirebaseCore" -framework "FirebaseInstanceID" -framework "FirebaseRemoteConfig"',
                'USER_HEADER_SEARCH_PATHS' => '"$(inherited)" "${PODS_ROOT}"/Firebase/**'
              }

  s.resources = [
		'ZappSDK.framework/*.nib',
		'ZappSDK.framework/*.storyboardc'
	]

  s.dependency 'MBProgressHUD', '= 1.1.0'
  s.dependency 'google-cast-sdk', '= 4.1.0'
  s.dependency 'CWStatusBarNotification', '= 2.3.5'
  s.dependency 'Firebase'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/RemoteConfig'
  s.dependency 'Firebase/DynamicLinks'
  s.dependency 'Kingfisher', '= 4.8.1'
  s.dependency 'HockeySDK', '= 5.1.2'

end
