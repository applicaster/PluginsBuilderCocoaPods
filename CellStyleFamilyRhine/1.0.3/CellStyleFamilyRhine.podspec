Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyRhine"
  s.version = '1.0.3'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyRhine"
  s.description = "CellStyleFamilyRhine container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyRhine-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyRhine_Framework_1.0.3_a2412a24962192a6ab15eaaac5c8a546f3cffbf5.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyRhine.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
