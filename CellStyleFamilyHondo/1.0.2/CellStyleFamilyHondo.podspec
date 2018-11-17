Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHondo"
  s.version = '1.0.2'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyHondo"
  s.description = "CellStyleFamilyHondo container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHondo-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHondo_Framework_1.0.2_8021663254f977f1fbf7c980bd5f768d838ef88f.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHondo.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
