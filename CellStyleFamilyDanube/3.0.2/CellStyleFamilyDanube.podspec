Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyDanube"
  s.version = '3.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyDanube"
  s.description = "CellStyleFamilyDanube container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyDanube-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyDanube_Framework_3.0.2_bf7b65ad8be9042be2ef8025e5f65f3605c2ba7c.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyDanube.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
