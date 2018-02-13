Pod::Spec.new do |s|
	s.name = "ZappRootPlugins"
	s.version = "3.0.1"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappRoot"
	s.description = "ZappRoot"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
		"http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRootPlugins_Framework_3.0.1_84b955a122f558cd74c2b3c88046790736173547.zip"
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
end
