Pod::Spec.new do |s|
s.name             = "modularizationLoginProject"
s.version          = "0.1"
s.summary          = "<My summary>"
s.description      = "<MUST BE LONGER THAN SUMMARY>"
s.homepage         = "https://github.com/RenanAlvesBCC/modularizationLoginProject"
s.license          = 'MIT'
s.author           = { "Renan Alves" => "araujo1898@gmail.com" }
s.source = {
    :git => 'https://github.com/RenanAlvesBCC/modularizationLoginProject.git',
    :tag => s.version.to_s,
    :submodules => true
}
s.platform     = :ios, '11.0'
s.requires_arc = true

s.default_subspecs = "Home"

    s.subspec 'Home' do |sp|
     sp.source_files = 'modularizationLoginProject/Home/**/*'
    end

end
