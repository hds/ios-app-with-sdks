# Uncomment this line to define a global platform for your project
source 'ssh://snc@source-europe.it.here.com/HERE-CocoaPods-Repository/git/HereCocoaPods'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, "8.0"

workspace "AppWithSDK"

inhibit_all_warnings!
use_frameworks!

target "AppWithSDK" do
    xcodeproj "AppWithSDK"
    pod 'ReactiveCocoa', '~> 2.5'
end


target "TheSDK" do
    xcodeproj "TheSDK/TheSDK"
    pod 'ReactiveCocoa', '~> 2.5'
end


target "OtherSDK" do
    xcodeproj "TheSDK/TheSDK"
    pod 'ReactiveCocoa', '~> 2.5'
end
