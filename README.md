# App with SDK

This is a proof of concept project to demonstrate a problem I'm having with
the `xcodebuild` command line tool and parallel builds for a project including
frameworks and Cocoa Pods shared between the frameworks.

Steps to reproduce:

 1. Check out git project
 2. Run `pod install`
 3. Run the following `xcodebuild` command:

```bash
xcodebuild -verbose -workspace AppWithSDK.xcworkspace -scheme AppWithSDK -sdk iphoneos8.4 -derivedDataPath Build -configuration Release archive -archivePath Build/Products/
```

Running the build command with the extra option `-jobs 1` fixes the issue, we
no longer get any errors.

The project builds just fine when using the Xcode app too, this issue only
appears for the command line tool.
