Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHato"
  s.version = '3.0.0'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyHato"
  s.description = "CellStyleFamilyHato container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHato-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHato_Framework_3.0.0_b52c7dd3595482ef81cacfce99b89b5703b8ed53.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHato.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
