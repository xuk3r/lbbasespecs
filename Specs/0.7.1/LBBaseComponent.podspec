#
# Be sure to run `pod lib lint LBBaseComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LBBaseComponent'
  s.version          = '0.7.1'
  s.summary          = '项目基础组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  项目基础组件，抽出常用的项目类。
                       DESC

  s.homepage         = 'https://git.5th.im/app-team/lbbasecomponent-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iCoobin' => 'shoubin.cheng@5th.work' }
  s.source           = { :git => 'ssh://git@git.5th.im:2222/app-team/lbbasecomponent-ios.git', :tag => s.version }

  s.ios.deployment_target = '10.0'

  s.source_files = 'LBBaseComponent/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'LBBaseComponent' => ['LBBaseComponent/Assets/*.png']
  # }
  #s.public_header_files = 'Pod/Classes/**/*.h'
  s.public_header_files = 'LBBaseComponent/Classes/LBBaseComponent.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # s.dependency 'Masonry'
  
  s.subspec 'BaseClasses' do |ss|
      ss.dependency 'LBBaseComponent/Const'
      ss.dependency 'LBBaseComponent/Categories'
      ss.source_files = 'LBBaseComponent/Classes/BaseClasses/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/BaseClasses/**/*.{h}'
  end
  
  s.subspec 'Categories' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Categories/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Categories/**/*.{h}'
      ss.dependency 'ISStego', '0.0.3'
  end
  
  s.subspec 'Const' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Const/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Const/**/*.{h}'
  end
  
  s.subspec 'Util' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Util/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Util/**/*.{h}'
  end
  
  s.subspec 'Macro' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/Macro/**/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/Macro/**/*.{h}'
  end
  
  s.subspec 'ThirdPart' do |ss|
      ss.source_files = 'LBBaseComponent/Classes/ThirdPart/*.{h,m}'
      ss.public_header_files = 'LBBaseComponent/Classes/ThirdPart/*.{h}'
      
      ss.subspec 'FDFullscreenPopGesture' do |sss|
          sss.source_files = 'LBBaseComponent/Classes/ThirdPart/FDFullscreenPopGesture/**/*.{h,m}'
          sss.public_header_files = 'LBBaseComponent/Classes/ThirdPart/FDFullscreenPopGesture/**/*.{h}'
      end
      
      ss.subspec 'CFLanguage' do |sss|
          sss.source_files = 'LBBaseComponent/Classes/ThirdPart/CFLanguage/**/*.{h,m}'
          sss.public_header_files = 'LBBaseComponent/Classes/ThirdPart/CFLanguage/**/*.{h}'
      end
      
      ss.subspec 'LBMediator' do |sss|
          sss.source_files = 'LBBaseComponent/Classes/ThirdPart/LBMediator/**/*.{h,m}'
          sss.public_header_files = 'LBBaseComponent/Classes/ThirdPart/LBMediator/**/*.{h}'
      end
      
      ss.subspec 'KLCPopup' do |sss|
          sss.source_files = 'LBBaseComponent/Classes/ThirdPart/KLCPopup/**/*.{h,m}'
          sss.public_header_files = 'LBBaseComponent/Classes/ThirdPart/KLCPopup/**/*.{h}'
      end
      
      ss.subspec 'AUUNumber' do |sss|
          sss.source_files = 'LBBaseComponent/Classes/ThirdPart/AUUNumber/**/*.{h,m}'
          sss.public_header_files = 'LBBaseComponent/Classes/ThirdPart/AUUNumber/**/*.{h}'
      end
      
      ss.subspec 'AESCrypt' do |sss|
          sss.source_files = 'LBBaseComponent/Classes/ThirdPart/AESCrypt/**/*.{h,m}'
          sss.public_header_files = 'LBBaseComponent/Classes/ThirdPart/AESCrypt/**/*.{h}'
      end
  end
  
end
