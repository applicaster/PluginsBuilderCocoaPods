Pod::Spec.new do |s|
  s.name         = 'OWASpringAppsensor'
  s.version      = '1.8.12.1'
  s.summary      = 'OWASpringAppsensor SDK'

  s.description  = <<-DESC
                    OWASpringAppsensor
                   DESC
  s.license      = 'private'
  s.author             = { "OWA" => "info@spring.de" }
  s.platform     = :ios, '8.0'
  s.homepage     = 'http://spring.de'
  s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/OWASpringAppsensor_Framework_1.8.12.1_aad0ca09ea4ff1846ee6f3cca58798587af3b65c.zip"
  }

  s.preserve_paths = 'OWASpringAppsensor.framework'
  s.vendored_framework = 'OWASpringAppsensor.framework'
  s.resources = 'OWASpringAppsensor.framework/Versions/A/Resources/*'
  s.framework = 'OWASpringAppsensor'
  s.requires_arc = true

end
