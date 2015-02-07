#
# Be sure to run `pod lib lint DRPMagicKitLight.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DRPMagicKitLight"
  s.version          = "1.0.1"
  s.summary          = "Detect file types with libmagic"
  s.description      = <<-DESC
                       This is a wrapper around libmagic with the database slimmed down for only very common file types.
                       DESC
  s.homepage         = "https://github.com/yepthatsjason/DRPMagicKitLight"
  s.license          = 'MIT'
  s.author           = { "Jason Ederle" => "jason@funly.io" }
  s.source           = { :git => "https://github.com/yepthatsjason/MagicKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'

end
