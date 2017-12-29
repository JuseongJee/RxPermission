Pod::Spec.new do |s|
  s.name             = "JuseongJee_RxPermission"
  s.version          = "1.0.0"
  s.summary          = "RxSwift bindings for Permissions API in iOS."
  s.description      = <<-EOS
  RxSwift binding for [Permission](https://github.com/delba/Permission) API that helps you with Permissions in iOS.
  EOS
  s.homepage         = "https://github.com/JuseongJee/RxPermission"
  s.license          = 'MIT'
  s.author           = { "Łukasz Mróz" => "thesunshinejr@gmail.com" }
  s.source           = { :git => "https://github.com/JuseongJee/RxPermission.git", :tag => s.version.to_s }
  s.social_media_url = ''
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Source/*.swift'    
    ss.dependency 'Dschee-Permission/Core'
    ss.dependency 'RxSwift'
  end

  s.subspec 'AddressBook' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/AddressBook'
  end

  s.subspec 'Bluetooth' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Bluetooth'
  end

  s.subspec 'Camera' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Camera'
  end

  s.subspec 'Contacts' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Contacts'
  end

  s.subspec 'Events' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Events'
  end

  s.subspec 'Location' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Location'
  end

  s.subspec 'MediaLibrary' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/MediaLibrary'
  end

  s.subspec 'Microphone' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Microphone'
  end

  s.subspec 'Motion' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Motion'
  end

  s.subspec 'Notifications' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Notifications'
  end

  s.subspec 'Photos' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Photos'
  end

  s.subspec 'Reminders' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/Reminders'
  end

  s.subspec 'Siri' do |ss|
   ss.dependency 'JuseongJee_RxPermission/Core'
   ss.dependency 'Dschee-Permission/Siri'
  end

  s.subspec 'SpeechRecognizer' do |ss|
    ss.dependency 'JuseongJee_RxPermission/Core'
    ss.dependency 'Dschee-Permission/SpeechRecognizer'
  end
end
