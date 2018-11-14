Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyLerma"
  s.version = '1.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyLerma"
  s.description = "CellStyleFamilyLerma container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyLerma-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyLerma_Framework_1.0.0_76cc8d7993c5a84f48b0785f91f1ecb1a48879f5.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyLerma.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
