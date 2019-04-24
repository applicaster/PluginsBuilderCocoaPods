Pod::Spec.new do |s|
  s.name  = "ZappLoginPluginMedcomGo"
  s.version = '7.0.0'
  s.summary = "ZappLoginPluginMedcomGo"
  s.description = "ZappLoginPluginMedcomGo container."
  s.homepage  = "https://github.com/applicaster/ZappLoginPluginMedcomGo-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = { :git => "git@github.com:applicaster/ZappLoginPluginMedcomGo-iOS.git", :tag => s.version.to_s }
  s.platform     = :ios, '10.0'
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = 'ZappLoginPluginMedcomGo/**/*.h'
  s.source_files = 'ZappLoginPluginMedcomGo/**/*.{h,m,swift}'
  s.exclude_files = ['ZappLoginPluginMedcomGo/MedcomGoSocialLoginTwitter.swift', 'ZappLoginPluginMedcomGo/MedcomGoSocialLoginMicrosoft.swift']

  s.resources = [
    "ZappLoginPluginMedcomGo/**/*.{png,xib}"
  ]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'OTHER_LDFLAGS' => '$(inherited)',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'SWIFT_VERSION' => '4.2'
              }

  s.dependency 'ZappPlugins'
  s.dependency 'ZappLoginPluginsSDK'
  s.dependency 'FBSDKLoginKit'
  s.dependency 'GoogleSignIn'
  s.dependency 'AFNetworking'
end
