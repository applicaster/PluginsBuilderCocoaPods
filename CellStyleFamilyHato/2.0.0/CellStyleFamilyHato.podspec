Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHato"
  s.version = '2.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyHato"
  s.description = "CellStyleFamilyHato container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHato-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHato_Framework_2.0.0_54849d6c849a4137c1047dcd9082c72fcf04feee.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHato.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.0',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
