Pod::Spec.new do |s|
	s.name = "ZappRootPlugins"
	s.version = "2.2.3"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappRoot"
	s.description = "ZappRoot"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPlugins_Framework_2.2.3_a8c6d323ad3e0e4dc58a2d7a9460a55c3056587e.zip"
  }

	s.requires_arc = true
	s.default_subspec = 'Basic'
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'
						 }

	s.subspec 'Basic' do |basic|
		basic.vendored_frameworks = 'ZappRootPluginBase.framework'
		basic.dependency 'ApplicasterSDK'
		basic.dependency 'ZappPlugins'
  end

 	s.subspec 'NativeTabBar' do |nativeTabBar|
		nativeTabBar.vendored_frameworks = 'ZappRootPluginNativeTabBar.framework'

		nativeTabBar.dependency 'ComponentsSDK'
		nativeTabBar.dependency 'UIViewAppearanceSwift'
		nativeTabBar.dependency 'ZappLayoutsComponentsSDK'
		nativeTabBar.dependency 'ZappRootPlugins/Basic'
 	end

	s.subspec 'SwipeRoot' do |swipeRoot|
		swipeRoot.vendored_frameworks = 'ZappRootPluginSwipe.framework'
		swipeRoot.dependency 'ZappRootPlugins/Basic'
	end
end
