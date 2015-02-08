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
  s.version          = "1.0.2"
  s.summary          = "Detect file types with libmagic"
  s.description      = <<-DESC
                       This is a wrapper around libmagic with the database slimmed down for only very common file types.
                       DESC
  s.homepage         = "https://github.com/yepthatsjason/MagicKit"
  s.license          = 'MIT'
  s.author           = { "Jason Ederle" => "jason@funly.io",
                         "Ryan Wang" => "ryanwang@me.com" }
  s.source           = { :git => "https://github.com/yepthatsjason/MagicKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files =  [
    "libmagic/strlcpy.c",
    "libmagic/strlcat.c"
  ]

  s.exclude_files = [
    "libmagic/strlcpy.c",
    "libmagic/strlcat.c"
  ]

  s.public_header_files = '*.h'
	s.resources = 'magic.mgc'
	
  s.frameworks = ['UIKit', 'MobileCoreServices']
  s.libraries = "z"
  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) HAVE_CONFIG_H=1" }

end
