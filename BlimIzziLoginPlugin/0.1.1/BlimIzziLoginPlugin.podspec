Pod::Spec.new do |s|
  s.name  = "BlimIzziLoginPlugin"
  s.version = '0.1.1'
  s.swift_versions = ['5.0', '5.1']
  s.summary = "BlimIzziLoginPlugin"
  s.description = "BlimIzziLoginPlugin container."
  s.homepage  = "https://github.com/applicaster/BlimIzziLoginPlugin-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = { :git => "https://github.com/applicaster/BlimIzziLoginPlugin-iOS", :tag => s.version.to_s }
  s.platform     = :ios, '10.0'
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = 'BlimIzziLoginPlugin/**/*.h'
  s.source_files = 'BlimIzziLoginPlugin/**/*.{h,m,swift}'
  s.exclude_files = []

  s.resources = [
    "BlimIzziLoginPlugin/**/*.{png,jpg,xib,storyboard}"
  ]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'OTHER_LDFLAGS' => '$(inherited)',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                    'SWIFT_VERSION' => '5.1'
              }
              
  s.dependency 'ZappPlugins'
  s.dependency 'MBProgressHUD'
end
