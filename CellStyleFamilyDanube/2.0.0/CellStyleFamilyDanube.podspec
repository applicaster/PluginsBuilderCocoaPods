Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyDanube"
  s.version = '2.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyDanube"
  s.description = "CellStyleFamilyDanube container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyDanube-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyDanube_Framework_2.0.0_2f92fa04aac249c39b1ef43bd993f530b2536939.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyDanube.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
