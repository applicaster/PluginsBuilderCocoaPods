Pod::Spec.new do |s|
  s.name             = "ZappGeneralPlugins"
  s.version          = '1.3.12'
  s.summary          = "ZappGeneralPlugins"
  s.description      = <<-DESC
                        ZappGeneralPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappGeneralPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappGeneralPlugins_Framework_1.3.12_efd03bfe291fb6c8f8a97d068207e8fa1512f870.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
    basic.vendored_frameworks = 'ZappGeneralPlugins.framework'
  end

  #--------------SUBSPECS--------------

  s.subspec 'DynamicShortcutItems' do |dynamicShortcutItems|
    dynamicShortcutItems.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
                }

    dynamicShortcutItems.dependency 'ZappGeneralPlugins/Basic'
    dynamicShortcutItems.dependency 'ApplicasterSDK'
  end

  s.subspec 'SpotlightSubscription' do |spotlightSubscription|
    spotlightSubscription.frameworks = 'CoreSpotlight'
    spotlightSubscription.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
                }

    spotlightSubscription.dependency 'ZappGeneralPlugins/Basic'
  end

  s.subspec 'SpotlightUserActivitySearch' do |spotlightUserActivitySearch|
    spotlightUserActivitySearch.frameworks = 'CoreSpotlight'

    spotlightUserActivitySearch.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
                }

    spotlightUserActivitySearch.dependency 'ZappGeneralPlugins/Basic'
    spotlightUserActivitySearch.dependency 'ApplicasterSDK'
  end

  s.subspec 'AgofSurvey' do |agofSurvey|
    agofSurvey.frameworks = 'CoreTelephony'
    agofSurvey.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'OTHER_LDFLAGS' => '$(inherited) -framework "IRSurveyLib"',
                      'ENABLE_BITCODE' => 'NO'
                }

    agofSurvey.dependency 'ZappGeneralPlugins/Basic'
    agofSurvey.dependency 'INFOnlineSurvey', '~> 1.8.0'

  end

  s.subspec 'AdwordsAppInstallTracking' do |adwordsAppInstallTracking|
    adwordsAppInstallTracking.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited) -objc -l"GoogleConversionTracking"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**'
                }

    adwordsAppInstallTracking.dependency 'ZappGeneralPlugins/Basic'
    adwordsAppInstallTracking.dependency 'GoogleConversionTracking'
    adwordsAppInstallTracking.dependency 'ApplicasterSDK'

  end

  s.subspec 'ProsiebenHandleUniversalLinks' do |prosiebenHandleUniversalLinks|
    prosiebenHandleUniversalLinks.dependency 'ZappGeneralPlugins/Basic'
  end

  s.subspec 'DatasourceExtensionsReshet' do |datasourceExtensionsReshet|
    datasourceExtensionsReshet.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
                }

    datasourceExtensionsReshet.dependency 'ZappGeneralPlugins/Basic'
    datasourceExtensionsReshet.dependency 'ApplicasterSDK'
    datasourceExtensionsReshet.dependency 'ComponentsSDK'
    datasourceExtensionsReshet.dependency 'DateToolsSwift'
  end
end
