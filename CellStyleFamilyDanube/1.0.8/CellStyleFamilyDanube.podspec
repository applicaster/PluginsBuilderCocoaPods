Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyDanube"
  s.version = '1.0.8'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyDanube"
  s.description = "CellStyleFamilyDanube container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyDanube-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyDanube_Framework_1.0.8_75f91087e95f16953fe484dc3d1dfdb787e14c91.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyDanube.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
