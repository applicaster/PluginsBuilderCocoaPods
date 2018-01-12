Pod::Spec.new do |s|
  s.name         = 'APSiren'
  s.version      = '1.1.4'
  s.ios.deployment_target = '9.0'
  s.summary      = 'APSiren'
  s.homepage     = 'https://github.com/applicaster'
  s.author       = 'Applicaster'
  s.source       = { :git => 'git@github.com:applicaster/SirenParser-iOS.git', :tag => s.version.to_s }
  s.source       = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/APSiren_framework_1.1.4_0d1cf8e68a060b2f801c76dd3c925e0708aa298f"
  }
  s.vendored_frameworks = 'APSiren.framework'

  s.requires_arc = true
end
