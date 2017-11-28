Pod::Spec.new do |s|
  s.name             = "ZappAnalyticsPlugins"
  s.version = '2.1.8'
  s.summary          = "ZappAnalyticsPlugins"
  s.description      = <<-DESC
                        ZappAnalyticsPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappAnalyticsPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappAnalyticsPlugins_Framework_2.1.8_96ba49c01feed93982f5e1ac4127c235864ae562.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  #--------------SUBSPECS--------------
  s.subspec 'Basic' do |basic|
    basic.xcconfig =  { 'SWIFT_VERSION' => '3.2' }
    basic.dependency 'ZappPlugins'
    basic.dependency 'ZappAppConnector'
    basic.vendored_frameworks = 'ZappAnalyticsPluginBase.framework'
  end

  s.subspec 'Mixpanel' do |mixpanel|
    mixpanel.vendored_frameworks = 'ZappAnalyticsPluginMixpanel.framework'
    mixpanel.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    mixpanel.dependency 'ZappAnalyticsPlugins/Basic'
    mixpanel.dependency 'Mixpanel', '~> 3.1.0'
  end

  s.subspec 'GoogleAnalytics' do |ga|
    ga.vendored_frameworks = 'ZappAnalyticsPluginGA.framework'
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
    flurry.vendored_frameworks = 'ZappAnalyticsPluginFlurry.framework'

    flurry.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    flurry.dependency 'ZappAnalyticsPlugins/Basic'
    flurry.dependency 'Flurry-iOS-SDK', '~> 7.6.4'
  end

  s.subspec 'ComScore' do |comscore|
    comscore.vendored_frameworks = 'ZappAnalyticsPluginComScore.framework'

    comscore.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    comscore.dependency 'ZappAnalyticsPlugins/Basic'
    comscore.dependency 'ComScore-iOS', '~> 3.16'
  end

  s.subspec 'Akamai' do |akamai|
    akamai.vendored_frameworks = 'ZappAnalyticsPluginAkamai.framework'
    akamai.frameworks = 'MediaPlayer', 'SystemConfiguration', 'CoreMedia'

    akamai.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO',
                  'OTHER_LDFLAGS' => '$(inherited) -l"AKAMMediaExtensions-AV"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**'
                }

    akamai.dependency 'ZappAnalyticsPlugins/Basic'
    akamai.dependency 'Akamai-Analytics', '~> 1.3'
  end

  s.subspec 'Facebook' do |fb|
    fb.vendored_frameworks = 'ZappAnalyticsPluginFacebook.framework'

    fb.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    fb.dependency 'ZappAnalyticsPlugins/Basic'
    fb.dependency 'FBSDKCoreKit', '~> 4.19.0'
  end

  s.subspec 'Agof' do |agof|
    agof.vendored_frameworks = 'ZappAnalyticsPluginAgof.framework'

    agof.frameworks = 'CoreTelephony', 'SystemConfiguration'
    agof.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'OTHER_LDFLAGS' => '$(inherited) -framework "INFOnlineLibrary"',
                      'ENABLE_BITCODE' => 'NO'
                }

    agof.dependency 'ZappAnalyticsPlugins/Basic'
    agof.dependency 'INFOnline', '~> 1.2.0.1'

  end

  s.subspec 'Liftoff' do |liftoff|
    liftoff.vendored_frameworks = 'ZappAnalyticsPluginLiftoff.framework'

    liftoff.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'ENABLE_BITCODE' => 'NO'
                }

    liftoff.dependency 'ZappAnalyticsPlugins/Basic'
    liftoff.dependency 'Liftoff'
  end

  s.subspec 'CoolaData' do |cooladata|
     cooladata.vendored_frameworks = 'ZappAnalyticsPluginCoolaData.framework'

     cooladata.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                             'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                             'OTHER_LDFLAGS' => '$(inherited) -framework "cooladata-ios-sdk"',
                             'ENABLE_BITCODE' => 'NO'
                 }

     cooladata.dependency 'ZappAnalyticsPlugins/Basic'
     cooladata.dependency 'CoolaPod'
     cooladata.dependency 'ApplicasterSDK'
   end

   s.subspec 'OWA' do |owa|
     owa.vendored_frameworks = 'ZappAnalyticsPluginOwa.framework'
     owa.frameworks = 'AdSupport'

     owa.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                       'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                       'OTHER_LDFLAGS' => '$(inherited) -framework "OWASpringAppsensor"',
                       'ENABLE_BITCODE' => 'NO'
                 }
     owa.dependency 'ZappAnalyticsPlugins/Basic'
     owa.dependency 'OWASpringAppsensor', '~> 1.8.12.1'
   end

   s.subspec 'NetMetrix' do |netmetrix|
     netmetrix.vendored_frameworks = 'ZappAnalyticsPluginNetMetrix.framework'

     netmetrix.dependency 'ZappAnalyticsPlugins/Basic'
     netmetrix.dependency 'NETMetrixTrackingClient', '~> 1.1.0'
   end

   s.subspec 'AppsFlyer' do |appsflyer|
     appsflyer.vendored_frameworks = 'ZappAnalyticsPluginAppsFlyer.framework'
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
     firebase.vendored_frameworks = 'ZappAnalyticsPluginFirebase.framework'

     firebase.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                             'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                             'OTHER_LDFLAGS' => '$(inherited) -framework "FirebaseCore" -framework "FirebaseInstanceID" -framework "FirebaseAnalytics"',
                             'ENABLE_BITCODE' => 'NO'
                 }

     firebase.dependency 'ZappAnalyticsPlugins/Basic'
     firebase.dependency 'Firebase', '~> 4.4.0'
     firebase.dependency 'Firebase/Analytics'
   end
end
