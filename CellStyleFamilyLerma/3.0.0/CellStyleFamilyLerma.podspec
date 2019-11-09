Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyLerma"
  s.version = '3.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyLerma"
  s.description = "CellStyleFamilyLerma container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyLerma-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyLerma_Framework_3.0.0_20cd6346119021caaa9f1c918f29f2a96aff7d4a.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyLerma.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
