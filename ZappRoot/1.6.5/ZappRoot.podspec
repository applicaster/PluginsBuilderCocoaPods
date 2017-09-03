Pod::Spec.new do |s|
	s.name = "ZappRoot"
	s.version = "1.6.5"
	s.ios.deployment_target = "9.0"
	s.summary = "ZappRoot"
	s.description = "ZappRoot"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRoot_Framework_1.6.5_690199fa18379c4f1ee0a53f799929d2fcdd46a2.zip"
  }

	s.vendored_frameworks = 'ZappRoot.framework'

	s.requires_arc = true
	s.xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
								 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '3.0'
						 }

	s.default_subspec = 'Lite'
	s.dependency 'ApplicasterSDK'
	s.dependency 'ZappPlugins'

	s.subspec 'Lite' do |lite|
  end

 	s.subspec 'NativeTabBar' do |nativeTabBar|
	 nativeTabBar.dependency 'ComponentsSDK'
	 nativeTabBar.dependency 'UIViewAppearanceSwift'
 	end

	s.subspec 'SwipeRoot' do |swipeRoot|
	 swipeRoot.dependency 'ApplicasterSDK'
	end
end
