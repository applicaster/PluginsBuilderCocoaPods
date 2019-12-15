Pod::Spec.new do |s|
  s.name  = "CellStyleFamilyHudson"
  s.version = '3.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "CellStyleFamilyHudson"
  s.description = "CellStyleFamilyHudson container."
  s.homepage  = "https://github.com/applicaster/CellStyleFamilyHudson-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/CellStyleFamilyHudson_Framework_3.0.1_153f228b34bcc0cc44de5917ae7310aea3b35929.zip"
  }

  s.requires_arc = true
  s.vendored_frameworks = 'CellStyleFamilyHudson.framework'

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
end
