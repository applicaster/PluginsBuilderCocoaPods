Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyJordan"
  s.version = '4.11.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyJordan"
  s.description = "CellStyleFamilyJordan container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyJordan-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyJordan_Framework_4.11.0_a5e5afc1c99423f1e5cd3763f01cf98b486cf102.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyJordan.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
