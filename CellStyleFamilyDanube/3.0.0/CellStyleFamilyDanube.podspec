Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyDanube"
  s.version = '3.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyDanube"
  s.description = "CellStyleFamilyDanube container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyDanube-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyDanube_Framework_3.0.0_02a2db6a6c103f8da4f9b8f1e9ce0565a21b089a.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyDanube.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
