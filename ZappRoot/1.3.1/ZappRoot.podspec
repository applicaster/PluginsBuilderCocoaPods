Pod::Spec.new do |s|
	s.name = "ZappRoot"
	s.version = "1.3.1"
	s.ios.deployment_target = "8.0"
	s.summary = "ZappRoot"
	s.description = "ZappRoot"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
                    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappRoot_Framework_1.3.1_45153f5f78c5c9cd2e303908675d996534f0cbf6.zip"
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
