Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyChagres"
  s.version = '1.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyChagres"
  s.description = "CellStyleFamilyChagres container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyChagres-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyChagres_Framework_1.0.1_7a1b22aeb98625cd5217493dbf2c6ed81452926a.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyChagres.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
