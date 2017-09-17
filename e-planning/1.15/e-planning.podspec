Pod::Spec.new do |s|
  s.name         = 'e-planning'
  s.version      = '1.15'
  s.ios.deployment_target = '8.0'
  s.summary      = 'e-planning'
  s.homepage     = 'https://e-planning.net'
  s.author       = 'Applicaster'
  s.source       = { :git => 'git@github.com:applicaster/e-planning-iOS.git', :tag => s.version.to_s }
  s.source       = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/e-planning_Framework_1.15_291f0fe66130653a75609439844fd3cd292f1070.zip"
  }
  s.vendored_frameworks = 'e-planning.framework'

  s.requires_arc = true
end
