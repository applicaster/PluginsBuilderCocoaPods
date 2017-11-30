Pod::Spec.new do |s|
	s.name = "ZappPlugins"
	s.version = "1.16.1"
	s.platform = :ios
	s.ios.deployment_target = "9.0"
	s.summary = "ZappPlugins"
	s.description = "Zapp Plugins store Protocol and Managers that relevan for Applicaster Zapp Plugin System"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD."
	s.source       = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlugins_Framework_1.16.1_8407624adda293e57538eb37480455b3d9157bc8.zip"
  }

	s.vendored_frameworks = 'ZappPlugins.framework'

	s.requires_arc = true
	s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
								 'SWIFT_VERSION' => '4.0'}

end
