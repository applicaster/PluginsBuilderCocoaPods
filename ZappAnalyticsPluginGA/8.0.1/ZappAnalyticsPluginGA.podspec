Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginGA"
  s.version = '8.0.1'
  s.summary = "ZappAnalyticsPluginGA"
  s.description = "ZappAnalyticsPluginGA container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginGA-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginGA_Framework_8.0.1_c1184f41b950b149d479b42f0e514f0637be5782.zip"
  }
  s.platform = :ios
  s.ios.deployment_target = '10.0'

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginGA.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK','~> 8.0.4'
  

  # frameworks
  s.frameworks = 'AdSupport', 'CoreData', 'SystemConfiguration'
  s.libraries = 'sqlite3.0', 'z'

  # config
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited) -l"GoogleAnalytics"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.0'
              }

  # addtional dependencies
  s.ios.dependency 'GoogleAnalytics', '~> 3.17.0'

  s.ios.script_phase = {
    :name => 'Copy modulemap',
    :script =>  <<~SCRIPT,
                  rm -f "${PODS_ROOT}/Headers/Public/GoogleAnalytics/module.modulemap"
                  cp "${PODS_TARGET_SRCROOT}/ZappAnalyticsPluginGA/module-ci/module.modulemap" "${PODS_ROOT}/Headers/Public/GoogleAnalytics/module.modulemap"
                SCRIPT
    :execution_position => :before_compile }


end
