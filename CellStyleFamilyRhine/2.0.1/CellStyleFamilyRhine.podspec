Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyRhine"
  s.version = '2.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyRhine"
  s.description = "CellStyleFamilyRhine container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyRhine-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyRhine_Framework_2.0.1_a9b090b11cbbf1fc05e8358aba6fa2b0cbf15e31.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyRhine.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
