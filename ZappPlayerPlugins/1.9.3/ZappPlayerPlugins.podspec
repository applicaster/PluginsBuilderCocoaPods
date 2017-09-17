Pod::Spec.new do |s|
  s.name             = "ZappPlayerPlugins"
  s.version = '1.9.3'
  s.summary          = "ZappPlayerPlugins"
  s.description      = <<-DESC
                        ZappPlayerPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappPlayerPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappPlayerPlugins_Framework_1.8.1_d34630c3893260ba46d503bce02c03f8ae53dd60.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs

  s.subspec 'Basic' do |basic|
    basic.xcconfig =  { 'SWIFT_VERSION' => '3.0' }
    basic.dependency 'ZappPlugins'
    basic.dependency 'ZappHelpers'
    basic.vendored_frameworks = 'ZappPlayerPlugins.framework'
  end

  #--------------SUBSPECS--------------

  s.subspec 'AP360' do |ap360|
    ap360.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO'
                }

    ap360.dependency 'ApplicasterSDK'
    ap360.dependency 'ZappPlayerPlugins/Basic'
    ap360.dependency 'AP360Player', '~> 0.2.3'
  end

  s.subspec 'YouTube' do |youtube|
    youtube.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                      'OTHER_LDFLAGS' => '$(inherited)',
                      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                      'USER_HEADER_SEARCH_PATHS' => '"$(inherited)" "${PODS_ROOT}"/Firebase/**'
                    }

    youtube.dependency 'ZappPlayerPlugins/Basic'
    youtube.dependency 'youtube-ios-player-helper', '~> 0.1.6'
    youtube.dependency 'ApplicasterSDK'
    youtube.dependency 'ZappAnalyticsPlugins/GoogleAnalytics'
    youtube.dependency 'ZappAnalyticsPlugins/Mixpanel'
  end

  s.subspec 'Neon' do |neon|
    neon.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'NO',
                    'OTHER_LDFLAGS' => '$(inherited)',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'USER_HEADER_SEARCH_PATHS' => '"$(inherited)" "${PODS_ROOT}"/Firebase/**'
                  }

    neon.dependency 'ApplicasterSDK'
    neon.dependency 'ApplicasterUIKit'
    neon.dependency 'ZappPlayerPlugins/Basic'
    neon.dependency 'ZappAnalyticsPlugins/GoogleAnalytics'
    neon.dependency 'ZappAnalyticsPlugins/Mixpanel'

    #NeonKit
    neon.dependency 'TVCA-Player-Pluggable-iOS', '~> 2.8.0'
  end

  s.subspec 'Disco' do |disco|
    disco.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'NO',
                    'OTHER_LDFLAGS' => '$(inherited)',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**'
                  }

    disco.dependency 'ApplicasterSDK'
    disco.dependency 'ApplicasterUIKit'
    disco.dependency 'ZappPlayerPlugins/Basic'
  end

  s.subspec 'APBaby' do |baby|
    baby.xcconfig =  {
              'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
              'ENABLE_BITCODE' => 'NO'
                }

    baby.dependency 'ApplicasterSDK'
    baby.dependency 'ZappPlayerPlugins/Basic'
  end

  s.subspec 'Ooyala' do |ooyala|
    ooyala.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'OTHER_LDFLAGS' => '$(inherited) -framework "OoyalaSDK"',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**'
                }

    ooyala.frameworks = 'AVFoundation', 'AVKit', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'JavaScriptCore',
                        'CoreText', 'Foundation', 'SystemConfiguration', 'MediaAccessibility',
                        'MediaPlayer', 'QuartzCore', 'Security', 'SystemConfiguration', 'UIKit'

    ooyala.libraries = "z", "xml2", "c++"

    s.prepare_command = <<-CMD
                          curl -o libLSDMetrics_final.a -Lk https://bintray.com/applicaster-ltd/LSDAnalyticsLib/download_file?file_path=libLSDMetrics_final.a
                          curl -o LSDMetrics.h -Lk https://bintray.com/applicaster-ltd/LSDAnalyticsLib/download_file?file_path=LSDMetrics.h
                        CMD

    ooyala.vendored_libraries = 'libLSDMetrics_final.a'

    ooyala.dependency 'ApplicasterSDK'
    ooyala.dependency 'ZappPlayerPlugins/Basic'
    ooyala.dependency 'OoyalaSDK'
  end

  s.subspec 'Nagra' do |nagra|
    nagra.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                        'ENABLE_BITCODE' => 'NO',
                        'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/NagraKitAdapter/NagraSDK/cpak'
                      }

    nagra.dependency 'ApplicasterSDK'
    nagra.dependency 'ZappPlayerPlugins/Basic'
    #NagraKit
    nagra.dependency 'NagraKitAdapter'

  end

  s.subspec 'MediaGen' do |media_gen|
    media_gen.xcconfig =  {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'ENABLE_BITCODE' => 'NO'
    }

    media_gen.dependency 'ApplicasterSDK'
    media_gen.dependency 'ZappPlayerPlugins/Basic'

  end

  s.subspec 'DefaultPlayerWithStorefront' do |default|
    default.xcconfig =  {
      'ENABLE_BITCODE' => 'NO'
    }

    default.dependency 'ApplicasterSDK'
    default.dependency 'ZappPlayerPlugins/Basic'
  end

end
