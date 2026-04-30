# Uncomment the next line to define a global platform for your project
 platform :ios, '13.0'

target 'Archeologie' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
inhibit_all_warnings!
  # Pods for Places
pod 'Firebase'
pod 'Firebase/Analytics'
pod 'Hero'
pod 'YouTubePlayer'
pod 'FloatingPanel'
pod 'LNZCollectionLayouts'
pod 'Alamofire'
pod 'SwiftyJSON'
pod 'KFImageViewer', :git => 'https://github.com/MRzr/KFImageViewer.git'
pod 'ZoomImageView'
pod 'Kingfisher'
pod 'Moya/RxSwift'
pod 'RxGesture'
pod 'RxDataSources'
pod 'GoogleMaps'
pod 'GeoJSONSerialization'
pod 'Google-Maps-iOS-Utils', :git => 'https://github.com/MRzr/google-maps-ios-utils.git'
pod 'ClusterKit'
pod 'UIEmptyState'
pod 'Firebase/Performance'
pod 'DPPickerManager'
end

target 'Sauersack' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
inhibit_all_warnings!
  # Pods for Places
pod 'Firebase'
pod 'Firebase/Analytics'
pod 'Hero'
pod 'YouTubePlayer'
pod 'FloatingPanel'
pod 'LNZCollectionLayouts'
pod 'Alamofire'
pod 'SwiftyJSON'
pod 'KFImageViewer', :git => 'https://github.com/MRzr/KFImageViewer.git'
pod 'ZoomImageView'
pod 'Kingfisher'
pod 'Moya/RxSwift'
pod 'RxGesture'
pod 'RxDataSources'
pod 'GoogleMaps'
pod 'GeoJSONSerialization'
pod 'Google-Maps-iOS-Utils', :git => 'https://github.com/MRzr/google-maps-ios-utils.git'
pod 'ClusterKit'
pod 'UIEmptyState'
pod 'Firebase/Performance'
pod 'DPPickerManager'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      xcconfig_path = config.base_configuration_reference.real_path
      xcconfig = File.read(xcconfig_path)
      xcconfig_mod = xcconfig.gsub(/DT_TOOLCHAIN_DIR/, "TOOLCHAIN_DIR")
      File.open(xcconfig_path, "w") { |file| file << xcconfig_mod }
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 13.0
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
    end

  end
end

