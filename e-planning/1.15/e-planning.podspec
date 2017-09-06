Pod::Spec.new do |s|
  s.name         = 'e-planning'
  s.version      = '1.15'
  s.ios.deployment_target = '8.0'
  s.summary      = 'e-planning'
  s.homepage     = 'https://e-planning.net'
  s.author       = 'Applicaster'
  s.source       = { :git => 'git@github.com:applicaster/e-planning-iOS.git', :tag => s.version.to_s }
  s.source_files  = '**/*.{h,m}'
  s.public_header_files = '**/Categories/*.h', '*.h'
  s.resources = 'Resources/**/*.*'
  s.requires_arc = true
end
