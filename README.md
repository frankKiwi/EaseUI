# EaseUI
给环信填坑

1.首先如若第三方平台没有适配最新的机型或者系统我们可以自己尝试去修改可以修改的部分来达到适配的目的.

2.如果你使用的是环信的老的EaseUI,在ios13.0系统以上收不到消息那么:

<1>.可以尝试修改EaseUI.podspec

```
将支持的Hyphenate改为3.6.4 当然pod会给你Install3.6.9 的版本, 这里3.6.9 的版本是最低支持9.0的系统.

```
<2>.将这个文件修改一下,将之前podfile文件的安装

```
#pod 'EaseUI', :git => 'https://github.com/easemob/easeui-ios-hyphenate-cocoapods.git', :tag => ‘3.4.2’
#pod 'Hyphenate','~> 3.4.1'

```
注释掉

```
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

```



<3>.下载EaseUI最新的3.5.3的版本将他放到项目同级目录,用本地的cocoapods管理.
```
pod 'EaseUI', :path => './EaseUI/EaseUI.podspec'
```
就可以使用了

看到网上有很多想换这个那个的可以尝试一下替换一下.当然不需要的话那就算了.


