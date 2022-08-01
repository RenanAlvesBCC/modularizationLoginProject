Pod::Spec.new do |s|
s.name             = "modularizationLoginProject"
s.version          = "0.1"
s.summary          = "<My summary>"
s.description      = "<MUST BE LONGER THAN SUMMARY>"
s.homepage         = "https://github.com/RenanAlvesBCC/modularizationLoginProject"
s.license          = 'MIT'
s.author           = { "Renan Alves" => "araujo1898@gmail.com" }
s.source           = { :git => "https://github.com/<username>/<myrepo>.git", :tag => s.version.to_s }
s.platform     = :ios, '11.0'
s.requires_arc = true

s.default_subspecs = "VIPERBase", "Home"

    s.subspec 'VIPERBase' do |sp|
        sp.source_files = 'modularizationLoginProject/VIPERBase/**/*'
    end

    s.subspec 'Home' do |sp|
     sp.source_files = 'modularizationLoginProject/Home/**/*'
     sp.dependency 'modularizationLoginProject/VIPERBase'
    end

end
