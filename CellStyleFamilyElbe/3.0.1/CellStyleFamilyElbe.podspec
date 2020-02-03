Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyElbe"
  s.version = '3.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyElbe"
  s.description = "CellStyleFamilyElbe container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyElbe-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyElbe_Framework_3.0.1_98334730da0a85f18ae151654a8df0aeb20ae17c.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyElbe.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
