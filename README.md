ShinobiEssentials Sliding Overlay Demo (Objective-C)
=====================

The ShinobiEssentials Sliding Overlay (SEssentialsSlidingOverlay) gives you an easy way to drop a sliding overlay into your project. This is increasingly becoming one of the most popular navigation patterns in iOS development, with apps like Facebook, Path, Gmail and Twitterrific (to name just a few) all following this navigation pattern. 

This project shows you how to implement this pattern in your own iOS application using the SEssentialsSlidingOverlay. There is an accompanying blog post [here](http://www.shinobicontrols.com/blog/posts/2013/02/04/navigating-the-slidingpanel/).

![Screenshot](screenshot.png?raw=true)

Building the project
------------------

In order to build this project you'll need a copy of ShinobiEssentials. If you don't have it yet, you can download a free trial from the [ShinobiEssentials website](http://www.shinobicontrols.com/shinobiessentials/).

Once you've downloaded and unzipped ShinobiEssentials, open up the project in XCode, and drag ShinobiEssentials.embeddedframework from the finder into Xcode's 'frameworks' group, and XCode will sort out all the header and linker paths for you.

If you’re using the trial version you’ll need to add your license key. To do so, open up AppDelegate.m, import <ShinobiEssentials/SEssentials.h>, and set the license key inside application:didFinishLaunchingWithOptions: as follows:

    #import <ShinobiEssentials/SEssentials.h>

    @implementation AppDelegate

    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
    {
        [SEssentials setLicenseKey:@"your license key"];
        …
    }

Contributing
------------

We use the Fork & Pull Model so if you want to contribute to this project, please go ahead and fork our repository, make your changes, then send us a pull request when you’d like us to take a look at your work.

License
-------

The [Apache License, Version 2.0](license.txt) applies to everything in this repository, and will apply to any user contributions.

