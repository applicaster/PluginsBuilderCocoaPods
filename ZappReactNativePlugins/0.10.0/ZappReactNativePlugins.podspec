Pod::Spec.new do |s|
  s.name             = "ZappReactNativePlugins"
  s.version          = '0.10.0'
  s.summary          = "ZappReactNativePlugins"
  s.description      = <<-DESC
                        ZappReactNativePlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativePlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source           = { :git => "git@github.com:applicaster/ZappReactNativePlugins-iOS.git", :tag => s.version.to_s }

  s.platform     = :ios, '9.0'

  s.requires_arc = true
  s.default_subspec = 'Basic'

  # required for all subspecs

  s.subspec 'Basic' do |basic|
    basic.dependency 'ZappPlugins'
    basic.dependency 'React'
    basic.source_files = [
        'ZappReactNativePlugins/Views/**/*.{h,m,swift}',
        'ZappReactNativePlugins/Bridging/**/*.{h,m,swift}',
        'ZappReactNativePlugins/Extensions/**/*.{h,m,swift}'
    ]
  end

  #--------------SUBSPECS--------------

  s.subspec 'Default' do |default|
    default.public_header_files = 'ZappReactNativePlugins/Plugins/Default/**/*.h'
    default.source_files = 'ZappReactNativePlugins/Plugins/Default/**/*.{h,m,swift}'

    default.resources = [
                  "ZappReactNativePlugins/Plugins/Default/**/*.plist",
                  "ZappReactNativePlugins/Plugins/Default/**/*.png"]

    default.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'NO',
                  'SWIFT_VERSION' => '3.2'
                }

    default.dependency 'ZappReactNativePlugins/Basic'
    default.dependency 'ApplicasterSDK'
  end

end
