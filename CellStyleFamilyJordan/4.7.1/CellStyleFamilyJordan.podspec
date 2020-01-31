Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyJordan"
  s.version = '4.7.1'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyJordan"
  s.description = "CellStyleFamilyJordan container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyJordan-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyJordan_Framework_4.7.1_1a8403de1095682d8486930ca51ab1b5a4367d5f.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyJordan.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
