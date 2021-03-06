Pod::Spec.new do |s|
	s.name = "ZappRootPlugins"
	s.version = "1.7.1"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappRoot"
	s.description = "ZappRoot"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPlugins_Framework_1.7.1_.zip"
  }

	s.requires_arc = true
	s.default_subspec = 'Basic'

	s.subspec 'Basic' do |basic|
		basic.vendored_frameworks = 'ZappRootPluginBase.framework'
		basic.xcconfig =  { 'SWIFT_VERSION' => '3.0' }

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
