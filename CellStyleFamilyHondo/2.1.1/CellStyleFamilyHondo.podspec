Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHondo"
  s.version = '2.1.1'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyHondo"
  s.description = "CellStyleFamilyHondo container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHondo-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHondo_Framework_2.1.1_31cb6447b6140744d8a14938a5ab46e8badf07c8.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHondo.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
