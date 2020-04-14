Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyElbe"
  s.version = '3.0.4'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyElbe"
  s.description = "CellStyleFamilyElbe container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyElbe-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyElbe_Framework_3.0.4_a21be2e27e778720a0833f88bd0b3bda8ab53094.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyElbe.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
