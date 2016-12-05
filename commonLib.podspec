Pod::Spec.new do |s|
s.name             = 'commonLib'
s.version          = '0.1.0'
s.summary          = 'commonLib  各种帮助类集合'

s.description      = <<-DESC

各种帮助类集合 各种帮助类集合 各种帮助类集合 各种帮助类集合 各种帮助类集合 各种帮助类集合
各种帮助类集合 各种帮助类集合.
DESC


s.homepage         = 'https://github.com/yanghl/commonLib.git'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { "sean.yang" => "272789124@qq.com" }
s.source           = { :git => 'https://github.com/yanghl/commonLib.git', :tag => s.version.to_s }
s.platform     = :ios, '7.0'
s.requires_arc = true
s.frameworks = 'Foundation', 'CoreGraphics'
s.source_files = 'commonLib/Classes/**/*.{h,c,m,swift}'
s.resources = ['commonLib/Classes/**/*.{xib,nib,plist,storyboard,ttf}','commonLib/Assets/**/*.png']
s.public_header_files   = "EMSpeed/UIKit/FontAwesome+iOS/**/*.h"
#s.vendored_frameworks = 'commonLib/Classes/**/WSPX.framework'

s.dependency 'AFNetworking'
s.dependency 'JSONModel'
s.dependency 'PINCache'
s.dependency 'JLRoutes'
s.dependency 'CocoaLumberjack'
s.dependency 'SDWebImage'

end
