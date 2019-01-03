Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyGrande"
  s.version = '1.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyGrande"
  s.description = "CellStyleFamilyGrande container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyGrande-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyGrande_Framework_1.0.3_5e80cee81f2c4781d2cc0e2233798e423add7ba2.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyGrande.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
