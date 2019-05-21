Pod::Spec.new do |s|
  s.name  = "ZappPlayerPluginDefaultWithMediastreamToken"
  s.version = '2.0.14'
  s.platform  = :ios, '10.0'
  s.summary = "ZappPlayerPluginDefaultWithMediastreamToken"
  s.description = "ZappPlayerPluginDefaultWithMediastreamToken container."
  s.homepage  = "https://github.com/applicaster/ZappPlayerPluginDefaultWithMediastreamToken-iOS"
  s.license = 'CMPS'
	s.author = { "cmps" => "Applicaster LTD." }
	s.source  = { :git => "git@github.com:applicaster/ZappPlayerPluginDefaultWithMediastreamToken-iOS.git", :tag => s.version.to_s }
  s.requires_arc = true

  s.frameworks = 'AVFoundation', 'AVKit', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'JavaScriptCore', 'CoreText', 'Foundation', 'SystemConfiguration', 'MediaAccessibility', 'MediaPlayer', 'QuartzCore', 'Security', 'SystemConfiguration', 'UIKit'

  s.public_header_files = 'ZappPlayerPluginDefaultWithMediastreamToken/**/*.h'
  s.source_files = 'ZappPlayerPluginDefaultWithMediastreamToken/**/*.{h,m,swift}'
  s.resources = []

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited)',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'SWIFT_VERSION' => '4.2'
                }

  # addtional dependencies
  s.dependency 'ApplicasterSDK'
  s.dependency 'ZappPlugins'
  s.dependency 'AFNetworking'

end
