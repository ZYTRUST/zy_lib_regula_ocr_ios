#
# Be sure to run `pod lib lint zy_lib_regula_ocr_ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'zy_lib_regula_ocr_ios'
  s.version          = '0.5.0'
  s.summary          = 'Libreria exclusiva para clientes de ZYTrust , captura de Documentos.'
  s.swift_versions   = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Libreria exclusiva para clientes de ZYTrust , captura de Documentos, la cual fue personalizada y editada para 
el mejor funcionamiento , base 8.5.x
                       DESC

  s.homepage         = 'https://www.zytrust.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan Caceres' => 'ztmobile@zytrust.com' }
  s.source           = { :git => 'https://github.com/ZYTRUST/zy_lib_regula_ocr_ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  
  s.resources = ['Sources/zy_lib_regula_ocr_ios.bundle']

  s.vendored_frameworks = "Sources/zy_lib_regula_ocr_ios.xcframework"

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.static_framework = true
  s.pod_target_xcconfig = {
    'ONLY_ACTIVE_ARCH' => 'YES'
  }

  s.dependency 'DocumentReader' , '8.1.4772'
  s.dependency 'DocumentReaderFullAuth', '8.1.12883'
  
end
