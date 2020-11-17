Pod::Spec.new do |spec|
  spec.name         = 'EaseUI'
  spec.version      = '3.6.4'
  spec.license       = { :type => 'Copyright', :text => 'EaseMob Inc. 2017' }
  spec.summary      = '解决环信在ios13.0系统以上,EaseUI和Hyphenate不适配的问题'
  spec.homepage     = 'https://github.com/frankKiwi'
  spec.author       = {'Frank LWW.' => '1778907544@qq.com'}
  spec.source       = { :git => 'https://none', :tag => '0.1' }
  spec.source_files = 'EaseUI/**/*.{h,m,mm}'
  spec.public_header_files = '**/*.{h}'
  spec.private_header_files = ['EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/amrwapper/wav.h','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/amrwapper/amrFileCodec.h','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrnb/*.h','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrwb/*.h']
  spec.prefix_header_contents = '#import <UIKit/UIKit.h>'
  spec.platform     = :ios, '9.0'
  spec.vendored_libraries = ['EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrnb/libopencore-amrnb.a','EaseUI/EMUIKit/3rdparty/DeviceHelper/VoiceConvert/opencore-amrwb/libopencore-amrwb.a']
  spec.requires_arc = true
  spec.frameworks = 'Foundation', 'UIKit'
  spec.libraries    = 'stdc++'
  spec.resource     = 'EaseUI/resources/EaseUIResource.bundle'
  spec.xcconfig     = {'OTHER_LDFLAGS' => '-ObjC'}
  spec.dependency 'MWPhotoBrowser', '~> 2.1.1'    
  spec.dependency 'MJRefresh', '~> 3.1.0'
  spec.dependency 'Hyphenate', '~> 3.6.4'
end
