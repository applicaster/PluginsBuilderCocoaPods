Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHondo"
  s.version = '2.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyHondo"
  s.description = "CellStyleFamilyHondo container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHondo-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHondo_Framework_2.0.0_089520c1015bfd5dbd64e7363ef46dde2e313f13.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHondo.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
