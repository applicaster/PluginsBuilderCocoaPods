Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyJordan"
  s.version = '1.0.2'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyJordan"
  s.description = "CellStyleFamilyJordan container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyJordan-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyJordan_Framework_1.0.2_64ad9baa8b46c8d1e96a8966db509114c648dbc1.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyJordan.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
