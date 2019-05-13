Pod::Spec.new do |s|
  s.name  = "AWSCognitoLogin"
  s.version = '0.0.11'
  s.summary = "AWSCognitoLogin"
  s.description = "AWSCognitoLogin container."
  s.homepage  = "https://github.com/applicaster/AWSCognitoLogin-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = { :git => "git@github.com:applicaster/AWSCognitoLogin-iOS.git", :tag => s.version.to_s }
  s.platform     = :ios, '10.0'
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = 'AWSCognitoLogin/**/*.h'
  s.source_files = 'AWSCognitoLogin/**/*.{h,m,swift}'
  s.exclude_files = []

  s.resources = [
    "AWSCognitoLogin/**/*.{storyboard,png,xib}"
  ]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'OTHER_LDFLAGS' => '$(inherited)',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'SWIFT_VERSION' => '4.2'
              }

  s.dependency 'ZappLoginPluginsSDK'
  s.dependency 'AWSCognitoIdentityProvider'
  s.dependency 'TPKeyboardAvoiding'
  s.dependency 'MBProgressHUD'
end
