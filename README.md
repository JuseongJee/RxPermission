# RxPermission

[![CocoaPods](https://img.shields.io/cocoapods/v/RxPermission.svg)](https://github.com/sunshinejr/RxPermission)
![Swift 4.0.x](https://img.shields.io/badge/Swift-4.0.x-orange.svg)
[![License](https://img.shields.io/cocoapods/l/RxPermission.svg?style=flat)](http://cocoapods.org/pods/RxPermission)
[![Platform](https://img.shields.io/cocoapods/p/RxPermission.svg?style=flat)](http://cocoapods.org/pods/RxPermission)

***This repository is a fork of the original project https://github.com/Dschee/Permission. It's because the orignal project [Permission](https://github.com/delba/Permission) had not maintained until now. so use [Dschee-Permission](https://github.com/Dschee/Permission) for dependancy***

[RxSwift](https://github.com/ReactiveX/RxSwift) bindings for [Permission](https://github.com/delba/Permission) API that helps you with Permissions in iOS.



## Installation

RxPermission is available through [CocoaPods](http://cocoapods.org). I can't
guarantee it is working correctly on Carthage, so if you want to help I'm happy
to introduce it with your PR.

RxPermission should work with every Swift release >= 2.2, for detailed
instructions check info below.

## Swift 3.0
If you want to use RxPermission with Swift 3.0 you have to specify which
Permission you want to install/use because of new Apple policy about permission.
For example if you want to access the Camera and the Notifications you define the following:
```
pod 'RxPermission/Camera'
pod 'RxPermission/Notifications'
```

Available specs:
```
pod 'RxPermission/AddressBook'
pod 'RxPermission/Bluetooth'
pod 'RxPermission/Camera'
pod 'RxPermission/Contacts'
pod 'RxPermission/Events'
pod 'RxPermission/Location'
pod 'RxPermission/MediaLibrary'
pod 'RxPermission/Microphone'
pod 'RxPermission/Motion'
pod 'RxPermission/Notifications'
pod 'RxPermission/Photos'
pod 'RxPermission/Reminders'
pod 'RxPermission/Siri'
pod 'RxPermission/SpeechRecognizer'
```

## Below Swift 3.0

To install it, simply add the following line to your Podfile:

```ruby
pod "RxPermission", "~> 0.2"
```

You need to also take care of Info.plist messages because otherwise Apple won't
accept the app in App Store.

## Usage

RxPermission makes a `rx.permission` Observable that you can subscribe in order to receive signals.

### Sample code
```swift
Permission
    .contacts
    .rx.permission
    .subscribe(onNext: { status in
        print("Status: \(status)")
    })
    .addDisposableTo(disposeBag)
```

### Available permissions:
```swift
public enum PermissionType {
    case addressBook
    case bluetooth
    case camera    
    case contacts
    case events
    case locationAlways
    case locationWhenInUse
    case mediaLibrary
    case microphone
    case motion
    case notifications
    case photos
    case reminders
    case siri
    case speechRecognizer
}
```

### Available statuses:
```swift
public enum PermissionStatus {
    case authorized
    case denied
    case disabled
    case notDetermined
}
```

For more info about permissions and statuses, please visit [Permission's README](https://github.com/delba/Permission#permission).

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

Sunshinejr, thesunshinejr@gmail.com, <a href="https://twitter.com/thesunshinejr">@thesunshinejr</a>

## License

RxPermission is available under the MIT license. See the LICENSE file for more info.
