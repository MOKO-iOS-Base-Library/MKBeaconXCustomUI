#
# Be sure to run `pod lib lint MKBeaconXCustomUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKBeaconXCustomUI'
  s.version          = '1.0.0'
  s.summary          = 'BXP系列app的组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MOKO-iOS-Base-Library/MKBeaconXCustomUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aadyx2007@163.com' => 'aadyx2007@163.com' }
  s.source           = { :git => 'https://github.com/MOKO-iOS-Base-Library/MKBeaconXCustomUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  
  s.resource_bundles = {
    'MKBeaconXCustomUI' => ['MKBeaconXCustomUI/Assets/*.png']
  }
  
  s.subspec 'Defines' do |ss|
    ss.source_files = 'MKBeaconXCustomUI/Classes/Defines/**'
  end
  
  s.subspec 'SlotAdopter' do |ss|
    ss.source_files = 'MKBeaconXCustomUI/Classes/SlotAdopter/**'
    
    ss.dependency 'MKBeaconXCustomUI/Defines'
  end
  
  s.subspec 'ScanUI' do |ss|
    
    ss.subspec 'Adopter' do |sss|
      sss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/Adopter/**'
      
      sss.dependency 'MKBeaconXCustomUI/ScanUI/ScanCell'
    end
    
    ss.subspec 'ScanCell' do |sss|
      sss.subspec 'ScanInfoCell' do |ssss|
        ssss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanCell/ScanInfoCell/**'
      end
      sss.subspec 'ScanBeaconCell' do |ssss|
        ssss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanCell/ScanBeaconCell/**'
      end
      sss.subspec 'ScanHTCell' do |ssss|
        ssss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanCell/ScanHTCell/**'
      end
      sss.subspec 'ScanThreeASensorCell' do |ssss|
        ssss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanCell/ScanThreeASensorCell/**'
      end
      sss.subspec 'ScanTLMCell' do |ssss|
        ssss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanCell/ScanTLMCell/**'
      end
      sss.subspec 'ScanUIDCell' do |ssss|
        ssss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanCell/ScanUIDCell/**'
      end
      sss.subspec 'ScanURLCell' do |ssss|
        ssss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanCell/ScanURLCell/**'
      end
    end
    
    ss.subspec 'ScanFilterView' do |sss|
      sss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanFilterView/**'
    end
    
    ss.subspec 'ScanSearchButton' do |sss|
      sss.source_files = 'MKBeaconXCustomUI/Classes/ScanUI/ScanSearchButton/**'
    end
    
  end
  
  s.subspec 'SlotConfig' do |ss|
    
      ss.subspec 'Protocol' do |sss|
        sss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/Protocol/**'
      end
      
      ss.subspec 'FrameTypePickView' do |sss|
        sss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/FrameTypePickView/**'
        
        sss.dependency 'MKBeaconXCustomUI/Defines'
      end
      
      ss.subspec 'SlotConfigCell' do |sss|
        
        sss.subspec 'BeaconCell' do |ssss|
          ssss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/SlotConfigCell/BeaconCell/**'
        end
        sss.subspec 'DeviceInfoCell' do |ssss|
          ssss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/SlotConfigCell/DeviceInfoCell/**'
        end
        sss.subspec 'UIDCell' do |ssss|
          ssss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/SlotConfigCell/UIDCell/**'
        end
        sss.subspec 'URLCell' do |ssss|
          ssss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/SlotConfigCell/URLCell/**'
        end
        
        sss.dependency 'MKBeaconXCustomUI/SlotAdopter'
        sss.dependency 'MKBeaconXCustomUI/SlotConfig/Protocol'
      end
      
      ss.subspec 'TriggerView' do |sss|
        sss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/TriggerView/**'
      end
      
      ss.subspec 'TriggerCell' do |sss|
        sss.source_files = 'MKBeaconXCustomUI/Classes/SlotConfig/TriggerCell/**'
        
        sss.dependency 'MKBeaconXCustomUI/SlotConfig/TriggerView'
        sss.dependency 'MKBeaconXCustomUI/SlotConfig/Protocol'
      end
      
  end
  
  s.subspec 'QuickSwitchCell' do |ss|
    ss.source_files = 'MKBeaconXCustomUI/Classes/QuickSwitchCell/**'
  end
  
  s.subspec 'DFUPage' do |ss|
      ss.subspec 'Controller' do |sss|
        sss.source_files = 'MKBeaconXCustomUI/Classes/DFUPage/Controller/**'
        
        sss.dependency 'MKBeaconXCustomUI/DFUPage/Model'
        sss.dependency 'MKBeaconXCustomUI/DFUPage/Protocol'
      end
      ss.subspec 'Model' do |sss|
        sss.source_files = 'MKBeaconXCustomUI/Classes/DFUPage/Model/**'
        
        sss.dependency 'MKBeaconXCustomUI/DFUPage/Protocol'
      end
      ss.subspec 'Protocol' do |sss|
        sss.source_files = 'MKBeaconXCustomUI/Classes/DFUPage/Protocol/**'
      end
      
      ss.dependency 'iOSDFULibrary'
  end
  
  s.subspec 'DeviceInfoPage' do |ss|
    ss.subspec 'Controller' do |sss|
      sss.source_files = 'MKBeaconXCustomUI/Classes/DeviceInfoPage/Controller/**'
      
      sss.dependency 'MKBeaconXCustomUI/DeviceInfoPage/Protocol'
    end
    ss.subspec 'Protocol' do |sss|
      sss.source_files = 'MKBeaconXCustomUI/Classes/DeviceInfoPage/Protocol/**'
    end
  end
  
  s.dependency 'MKBaseModuleLibrary'
  s.dependency 'MKCustomUIModule'
  s.dependency 'MLInputDodger'
  
end
