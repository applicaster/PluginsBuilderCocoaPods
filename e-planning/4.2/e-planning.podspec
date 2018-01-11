Pod::Spec.new do |s|
  s.name         = 'e-planning'
  s.version      = '4.2'
  s.ios.deployment_target = '8.0'
  s.summary      = 'e-planning'
  s.homepage     = 'https://e-planning.net'
  s.author       = 'Applicaster'
  s.source       = { :git => 'git@github.com:applicaster/e-planning-iOS.git', :tag => s.version.to_s }
  s.source       = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/e_planning_framework_4.2_a_f7747e4fe1d7d6a01101683390b83d632a40408e.zip"
  }
  s.vendored_frameworks = 'e_planning.framework'

  s.requires_arc = true
end
