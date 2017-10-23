Pod::Spec.new do |s|
  s.name         = "Appoxee"
  s.version      = "4.0.7"
  s.summary      = "Appoxee's Framework"
  s.homepage     = "http://www.appoxee.com"
  s.license      = ''
  s.author       = ''
  s.source       = { :http => 'https://dl.bintray.com/applicaster-ltd/pods/AppoxeeSDK.framework.zip' }
#  s.xcconfig     = { 'USER_HEADER_SEARCH_PATHS' => "$(SRCROOT)/Pods/**" }
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.public_header_files = 'AppoxeeSDK.framework/Versions/A/Headers/*.h'
  s.vendored_frameworks = 'AppoxeeSDK.framework'
end
