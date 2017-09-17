Pod::Spec.new do |s|
  s.name             = "ZappAnalyticsPlugins"
  s.version = '1.10.5'
  s.summary          = "ZappAnalyticsPlugins"
  s.description      = <<-DESC
                        ZappAnalyticsPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappAnalyticsPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPlugins_Framework_1.10.5_515843d70486180d7bbb6ee3a0d8acc3feac4ab6.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  #--------------SUBSPECS--------------
  s.subspec 'Basic' do |basic|
    basic.xcconfig =  { 'SWIFT_VERSION' => '3.0' }
    basic.dependency 'ZappPlugins'
    basic.dependency 'ZappAppConnector'
    basic.vendored_frameworks = 'ZappAnalyticsPlugins.framework'
  end

  s.subspec 'Mixpanel' do |mixpanel|
    mixpanel.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    mixpanel.dependency 'ZappAnalyticsPlugins/Basic'
    mixpanel.dependency 'Mixpanel', '~> 3.1.0'
  end

  s.subspec 'GoogleAnalytics' do |ga|
    ga.frameworks = 'AdSupport', 'CoreData', 'SystemConfiguration'
    ga.libraries = 'sqlite3.0', 'z'

    ga.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'OTHER_LDFLAGS' => '$(inherited) -l"GoogleAnalytics"',
                      'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'ENABLE_BITCODE' => 'NO'
                }

    ga.dependency 'ZappAnalyticsPlugins/Basic'
    ga.dependency 'GoogleAnalytics', '~> 3.17.0'
  end

  s.subspec 'Flurry' do |flurry|
    flurry.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    flurry.dependency 'ZappAnalyticsPlugins/Basic'
    flurry.dependency 'Flurry-iOS-SDK', '~> 7.6.4'
  end

  s.subspec 'ComScore' do |comscore|
    comscore.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    comscore.dependency 'ZappAnalyticsPlugins/Basic'
    comscore.dependency 'ComScore-iOS', '~> 3.16'
  end

  s.subspec 'Akamai' do |akamai|
    akamai.frameworks = 'MediaPlayer', 'SystemConfiguration'
    akamai.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO',
                  'OTHER_LDFLAGS' => '$(inherited) -l"AKAMMediaExtensions-AV"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**'
                }

    akamai.dependency 'ZappAnalyticsPlugins/Basic'
    akamai.dependency 'Akamai-Analytics', '~> 1.3'
  end

  s.subspec 'Facebook' do |fb|
    fb.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    fb.dependency 'ZappAnalyticsPlugins/Basic'
    fb.dependency 'FBSDKCoreKit', '~> 4.19.0'
  end

  s.subspec 'Agof' do |agof|
    agof.frameworks = 'CoreTelephony'
    agof.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'OTHER_LDFLAGS' => '$(inherited) -framework "INFOnlineLibrary" -framework "IRSurveyLib"',
                      'ENABLE_BITCODE' => 'NO'
                }

    agof.dependency 'ZappAnalyticsPlugins/Basic'
    agof.dependency 'INFOnline', '~> 1.2.0.1'
    agof.dependency 'INFOnlineSurvey', '~> 1.8.0'

  end

  s.subspec 'Liftoff' do |liftoff|
    liftoff.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'ENABLE_BITCODE' => 'NO'
                }

    liftoff.dependency 'ZappAnalyticsPlugins/Basic'
    liftoff.dependency 'Liftoff'
  end

  s.subspec 'CoolaData' do |cooladata|
     cooladata.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                             'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                             'OTHER_LDFLAGS' => '$(inherited) -framework "cooladata-ios-sdk"',
                             'ENABLE_BITCODE' => 'NO'
                 }

     cooladata.dependency 'ZappAnalyticsPlugins/Basic'
     cooladata.dependency 'CoolaPod'
   end

   s.subspec 'OWA' do |owa|
     owa.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                       'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                       'OTHER_LDFLAGS' => '$(inherited) -framework "OWASpringAppsensor"',
                       'ENABLE_BITCODE' => 'NO'
                 }
     owa.dependency 'ZappAnalyticsPlugins/Basic'
     owa.dependency 'OWASpringAppsensor', '~> 1.8.12.1'
   end

   s.subspec 'NetMetrix' do |netmetrix|
     netmetrix.dependency 'ZappAnalyticsPlugins/Basic'
     netmetrix.dependency 'NETMetrixTrackingClient', '~> 1.0.3'
   end

   s.subspec 'AppsFlyer' do |appsflyer|
    appsflyer.frameworks = 'AdSupport'

    appsflyer.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
      'OTHER_LDFLAGS' => '$(inherited) -framework "AppsFlyerLib"',
                            'ENABLE_BITCODE' => 'NO'
                }

    appsflyer.dependency 'ZappAnalyticsPlugins/Basic'
    appsflyer.dependency 'AppsFlyerFramework'
  end

  s.subspec 'Firebase' do |firebase|
     firebase.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                             'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                             'OTHER_LDFLAGS' => '$(inherited) -framework "FirebaseCore" -framework "FirebaseInstanceID" -framework "FirebaseAnalytics"',
                             'ENABLE_BITCODE' => 'NO'
                 }

     firebase.dependency 'ZappAnalyticsPlugins/Basic'
     firebase.dependency 'Firebase/Core'
     firebase.dependency 'Firebase/Analytics'
   end
end
