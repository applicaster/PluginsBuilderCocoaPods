Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyColorado"
  s.version = '4.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyColorado"
  s.description = "CellStyleFamilyColorado container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyColorado-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyColorado_Framework_4.0.2_e9faba2550448f7ab9c9635e2d67375ac38351e5.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyColorado.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
