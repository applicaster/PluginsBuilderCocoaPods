Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyChagres"
  s.version = '3.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyChagres"
  s.description = "CellStyleFamilyChagres container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyChagres-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyChagres_Framework_3.0.0_c3c366761941622559eabfef00fba8b788001e44.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyChagres.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
