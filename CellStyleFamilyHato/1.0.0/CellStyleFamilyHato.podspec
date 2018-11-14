Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHato"
  s.version = '1.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyHato"
  s.description = "CellStyleFamilyHato container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHato-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHato_Framework_1.0.0_fd44b154f00486451833f6b06f80527cc3a5807e.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHato.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
