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

I see a variety of issues, but they are always related to a pod included in
more than one place (both frameworks / framework & main app). The most common
error I see is:

```
CodeSign /path/to/workspace/AppWithSDK/Build/Build/Intermediates/ArchiveIntermediates/AppWithSDK/IntermediateBuildFilesPath/UninstalledProducts/ReactiveCocoa.framework
```

However sometimes I see errors relating to setting file permissions or file
ownership.

Running the build command with the extra option `-jobs 1` fixes the issue, we
no longer get any errors. For this reason I think that there are some timing issues with the parallel build.

The app as well as the two frameworks use the Cocoa React framework. I only
chose it because it's the pod that most often results in this error in a
larger project, and it's big enough that there are plenty of opportunities for
the timing issues to occur.

The project builds just fine when using the Xcode app too, this issue only
appears for the command line tool.
