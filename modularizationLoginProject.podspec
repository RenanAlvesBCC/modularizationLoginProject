Pod::Spec.new do |s|
s.name             = "modularizationLoginProject"
s.version          = "0.1"
s.summary          = "<My summary>"
s.description      = "<MUST BE LONGER THAN SUMMARY>"
s.homepage         = "https://github.com/RenanAlvesBCC/modularizationLoginProject"
s.license          = 'MIT'
s.author           = { "Renan Alves" => "araujo1898@gmail.com" }
s.source           = { :git => "https://github.com/<username>/<myrepo>.git", :tag => s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true

# If more than one source file: https://guides.cocoapods.org/syntax/podspec.html#source_files
s.source_files = 'modularizationLoginProject.swift' 

end

s.subspec 'VIPERBase' do |sp|
 s.source_files = 'modularizationLoginProject/VIPERBase'
end

s.subspec 'Home' do |sp|
 s.source_files = 'modularizationLoginProject/Home'
 sp.dependency 'modularizationLoginProject/VIPERBase'
end