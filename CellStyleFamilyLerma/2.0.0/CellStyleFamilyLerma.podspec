Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyLerma"
  s.version = '2.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyLerma"
  s.description = "CellStyleFamilyLerma container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyLerma-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyLerma_Framework_2.0.0_0d69a112db5d1230464ba9d1e0675b995110619d.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyLerma.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
