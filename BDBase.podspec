#
# Be sure to run `pod lib lint BDBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BDBase'
  s.version          = '1.0.2'
  s.summary          = 'A short description of BDBase.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'very powerfull tool for ios.Only objc.'

  s.homepage         = 'https://github.com/reference/BDBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'reference' => 'scottban@126.com' }
  s.source           = { :git => 'https://github.com/reference/BDBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  # s.resource_bundles = {
  #   'BDBase' => ['BDBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.frameworks   = "UIKit", "Foundation", "WebKit"
  s.requires_arc = true

  s.source_files  = "BDBase/Classes/BDBase.h"
  s.public_header_files = "BDBase/Classes/BDBase.h"
  
  s.dependency "BDToolKit"
  s.dependency "ZXToolbox"
  s.dependency "FFToast"
  s.dependency "MJRefresh"
  s.dependency "DZNEmptyDataSet"
  s.dependency "ReactiveObjC"
  
  s.subspec "BDBaseDefine" do |ss|
      ss.source_files  = "BDBase/Classes/BDBaseDefine/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDBaseDefine/*.h"
  end
  
  s.subspec "BDBaseViewController" do |ss|
      ss.dependency 'BDBaseDefine'
      ss.source_files  = "BDBase/Classes/BDBaseViewController/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDBaseViewController/*.h"
  end
  
  s.subspec "BDBaseAppDelegate" do |ss|
      ss.dependency 'BDBaseDefine'
      ss.dependency 'ZXToolbox'
      ss.source_files  = "BDBase/Classes/BDBaseAppDelegate/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDBaseAppDelegate/*.h"
  end
  
  s.subspec "BDTabBar" do |ss|
      ss.dependency 'ZXToolbox'
      ss.source_files  = "BDBase/Classes/BDTabBar/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDTabBar/*.h"
  end
  
  s.subspec "BDBaseTabBarController" do |ss|
      ss.dependency 'BDBaseDefine'
      ss.dependency 'ZXToolbox'
      ss.source_files  = "BDBase/Classes/BDBaseTabBarController/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDBaseTabBarController/*.h"
  end
  
  s.subspec "BDHTTP" do |ss|
      ss.dependency "AFNetworking"
      ss.dependency "YYModel"
      ss.source_files  = "BDBase/Classes/BDHTTP/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDHTTP/*.h"
  end
  
  s.subspec "BDBaseTableViewController" do |ss|
      ss.dependency 'BDBaseDefine'
      ss.source_files  = "BDBase/Classes/BDBaseTableViewController/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDBaseTableViewController/*.h"
  end

  s.subspec "BDBaseCollectionViewController" do |ss|
      ss.dependency 'BDBaseDefine'
      ss.source_files  = "BDBase/Classes/BDBaseCollectionViewController/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDBaseCollectionViewController/*.h"
  end

  s.subspec "BDBaseViewModel" do |ss|
      ss.source_files  = "BDBase/Classes/BDBaseViewModel/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDBaseViewModel/*.h"
  end

  s.subspec "BDWebViewController" do |ss|
      ss.dependency 'BDBaseViewController'
      ss.source_files  = "BDBase/Classes/BDWebViewController/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDWebViewController/*.h"
  end

  s.subspec "UITableView+Refresh" do |ss|
      ss.source_files  = "BDBase/Classes/Category/UITableView+Refresh/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/Category/UITableView+Refresh/*.h"
  end

  s.subspec "UIViewController+HUD" do |ss|
      ss.source_files  = "BDBase/Classes/Category/UIViewController+HUD/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/Category/UIViewController+HUD/*.h"
  end

  s.subspec "UITableViewController+HUD" do |ss|
      ss.source_files  = "BDBase/Classes/Category/UITableViewController+HUD/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/Category/UITableViewController+HUD/*.h"
  end

  s.subspec "UICollectionViewController+HUD" do |ss|
      ss.source_files  = "BDBase/Classes/Category/UICollectionViewController+HUD/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/Category/UICollectionViewController+HUD/*.h"
  end

  s.subspec "BDScanController" do |ss|
      ss.dependency 'BDBaseViewController'
      ss.source_files  = "BDBase/Classes/BDScanController/*.{h,m}"
      ss.public_header_files = "BDBase/Classes/BDScanController/*.h"
      ss.resource_bundles = {
          'BDBase' => 'BDBase/Classes/BDScanController/Res/*'
      }
  end
end
