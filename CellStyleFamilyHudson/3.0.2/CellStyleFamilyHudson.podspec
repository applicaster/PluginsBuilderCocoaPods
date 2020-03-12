Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHudson"
  s.version = '3.0.2'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyHudson"
  s.description = "CellStyleFamilyHudson container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHudson-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHudson_Framework_3.0.2_f0b915a8e43ef9d8f913cd7a88047ad7164cd091.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHudson.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
