Pod::Spec.new do |s|
  s.name  = "ZappAnalyticsPluginGA"
  s.version = '8.0.0'
  s.summary = "ZappAnalyticsPluginGA"
  s.description = "ZappAnalyticsPluginGA container."
  s.homepage  = "https://github.com/applicaster/ZappAnalyticsPluginGA-iOS"
  s.license = 'CMPS'
	s.author = "Applicaster LTD."
	s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPluginGA_Framework_8.0.0_ec9dc74727e65d7cd1aaf7f7aab1f8d78cafb97b.zip"
  }
  s.platform = :ios, :tvos
  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = "10.0"

  s.requires_arc = true
  s.static_framework = true
  s.vendored_frameworks = 'ZappAnalyticsPluginGA.framework'

  # base dependency
  s.dependency 'ZappAnalyticsPluginsSDK'

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
  s.tvos.dependency 'GoogleAnalytics-tvOS', '~> 3.17.0'

  s.ios.script_phase = {
    :name => 'Copy modulemap',
    :script =>  <<~SCRIPT,
                  rm -f "${PODS_ROOT}/Headers/Public/GoogleAnalytics/module.modulemap"
                  cp "${PODS_TARGET_SRCROOT}/ZappAnalyticsPluginGA/module-ci/module.modulemap" "${PODS_ROOT}/Headers/Public/GoogleAnalytics/module.modulemap"
                SCRIPT
    :execution_position => :before_compile }
  s.tvos.script_phase = {
    :name => 'Copy modulemap',
    :script =>  <<~SCRIPT,
                  rm -f "${PODS_ROOT}/Headers/Public/GoogleAnalytics-tvOS/module.modulemap"
                  cp "${PODS_TARGET_SRCROOT}/ZappAnalyticsPluginGA/module-ci/module.modulemap" "${PODS_ROOT}/Headers/Public/GoogleAnalytics-tvOS/module.modulemap"
                SCRIPT
    :execution_position => :before_compile }

end
