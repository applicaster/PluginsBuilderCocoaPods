Pod::Spec.new do |s|
  s.name         = "Freewheel"
  s.version      = "5.18.2"
  s.summary      = "Freewheel Framework"
  s.homepage     = "http://freewheel.tv"
  s.author       = 'a.kononenko@applicaster.com'
  s.source       = { :http => 'https://dl.bintray.com/applicaster-ltd/pods/FreewheelSDK.zip', :flatten => true }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.ios.source_files = '**/*.h'
  s.ios.vendored_libraries = '**/libAdManager.a'
end
