Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyColorado"
  s.version = '2.1.2'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyColorado"
  s.description = "CellStyleFamilyColorado container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyColorado-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyColorado_Framework_2.1.2_2c81be5fd934a9f3dd6d0010c31e6d780fdba985.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyColorado.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
