Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyColorado"
  s.version = '1.0.1'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyColorado"
  s.description = "CellStyleFamilyColorado container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyColorado-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyColorado_Framework_1.0.1_e8c2c5231e6c4dab6b7f7c7eebea3fc9fe131deb.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyColorado.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
