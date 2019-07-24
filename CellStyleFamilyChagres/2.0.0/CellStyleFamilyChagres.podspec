Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyChagres"
  s.version = '2.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyChagres"
  s.description = "CellStyleFamilyChagres container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyChagres-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyChagres_Framework_2.0.0_2754c22efee006b10a93483f06ac674fedab3449.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyChagres.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
