Pod::Spec.new do |s|
  s.name = "KKDownload"
  s.version = "0.1.0"
  s.summary = "A short description of KKDownload."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"ZFHY"=>"18736099531@163.com"}
  s.homepage = "https://github.com/ZFHY/KKDownload"
  s.requires_arc = true
  s.source = { :path => '.' }

  s.ios.deployment_target    = '12.0'
  s.ios.vendored_framework   = 'ios/KKDownload.framework'
end
