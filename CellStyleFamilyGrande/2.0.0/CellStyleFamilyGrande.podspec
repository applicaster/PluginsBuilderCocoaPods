Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyGrande"
  s.version = '2.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyGrande"
  s.description = "CellStyleFamilyGrande container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyGrande-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyGrande_Framework_2.0.0_04221831aecba94c984cc1722ed81f1d16d1403a.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyGrande.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
