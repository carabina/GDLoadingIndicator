Pod::Spec.new do |s|
  s.name         = "GDLoadingIndicator"
  s.version      = "1.0.0"
  s.summary      = "Loading indicator with set of animations"
  s.homepage     = "https://github.com/dani-gavrilov/GDLoadingIndicator"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Gavrilov Daniil" => "daniilmbox@gmail.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/dani-gavrilov/GDLoadingIndicator.git", :tag => "1.0.0" }
  s.source_files = "GDLoadingIndicator/*"
  s.frameworks = "QuartzCore", "UIKit", "Foundation"
  s.requires_arc = true
end
