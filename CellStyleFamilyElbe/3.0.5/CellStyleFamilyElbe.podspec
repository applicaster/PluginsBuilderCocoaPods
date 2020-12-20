Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyElbe"
  s.version = '3.0.5'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyElbe"
  s.description = "CellStyleFamilyElbe container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyElbe-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyElbe_Framework_3.0.5_2bc572f5d8179dcc87ded6801a5ff8eb38238095.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyElbe.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
