Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyJordan"
  s.version = '4.1.1'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyJordan"
  s.description = "CellStyleFamilyJordan container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyJordan-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyJordan_Framework_4.1.1_a61354bfd958acb16738f620631ac50e630b4d39.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyJordan.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
