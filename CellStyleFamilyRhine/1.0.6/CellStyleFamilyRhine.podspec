Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyRhine"
  s.version = '1.0.6'
  s.platform  = :ios, '9.0'
  s.summary = "CellStyleFamilyRhine"
  s.description = "CellStyleFamilyRhine container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyRhine-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyRhine_Framework_1.0.6_dd156f2d4eb78cb861f1f9fd4c0605d37853be98.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyRhine.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
