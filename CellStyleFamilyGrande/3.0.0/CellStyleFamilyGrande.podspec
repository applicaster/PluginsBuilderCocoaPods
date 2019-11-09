Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyGrande"
  s.version = '3.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyGrande"
  s.description = "CellStyleFamilyGrande container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyGrande-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyGrande_Framework_3.0.0_097b5f884da60f8ea2e55f8f23cc4ed03fa5d983.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyGrande.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
