---
title: About Rattlegram PWA
description: What's this Rattling all about? Ribbit!
author: Rich Clingman, K0OZK
---

# About This Rattlegram Test PWA

Thursday, August 17, 2023

### Install the Web App

This test Rattlegram Web App is available at 
[Rattlegram.<callsign></callsign>.com](https://rattlegram.k0ozk.com/).

If you're using a compatible browser, you should see an install icon in the browser address bar 
or a prompt at the bottom of your mobile screen. 
It's very likely we'll find problems with this test PWA. I did only minimal wrapping of Ahmet Inan's Example 3 JS code.
\(I just noticed that in Airplane Mode, hitting Refresh will break the installed app. 
I'm sure that I just need to configure the Service Worker correctly.)

### DSP, WASM, PWA

I've published this basic Progressive Web Application using
<a href="https://www.aicodix.de/example3/" target="_blank">Example 3 from Ahmet Inan's 2019 Digital Signal Processing Library/Web Assembly work</a>.

This basic app will allow us to test the PWA, DSP, WASM, and access to audio and GPS on various devices to see if pursuing a device-agnostic/single codebase PWA could be beneficial. 
I've tested the PWA on Windows and Android 11. It should work on all PWA and Web Assembly-compliant browsers. It should be "installable" on those devices as well.


### Why PWA? 

In addition to watching all available presentations on Ribbit, I read the emails archived in the ORI mailing lists. Josh Datko raised the issue of a PWA in the July discussion. 
I think a PWA will speed up development and adoption. It'll also allow us to deploy Windows/Mac/Linux support at the same time as mobile. 
There'd be no need for device-specific apps. No app store. The PWA should run&ndash;and be installable&ndash;on IOS, Android, Windows, Mac, Chrome, Linux, 
Arduino?&mdash;virtually anything with a browser that supports the necessary features. 

### In an Emergency Situation 

No Internet. The App Store and Play Store are inaccessible. No one can use Ribbit if they've not already installed it.

*But a PWA could be distributed via an ad-hoc web server at the EOC or even one running **on your smartphone.*** 


### Imagine... 

No internet. I join your phone's hotspot. I scan the QR code on your phone. My browser loads the Ribbit PWA and asks if I want to install it. 
Of course!
Then I turn on my hotspot and offer the PWA to the next ham. I think this could be done.

### Development and Deployment

This test PWA is set up with CI/CD. The latest release is built and deployed to the production site 
within a couple minutes of code being pushed to the repository.
By using Pull Requests, a preview website is automatically created.
We can use the preview to test and approve the latest release.
Then, with one click, we release the latest awesomeness.

### Update the App on All Your Devices

No need to reinstall the app. 
My experience is that if you right-click/refresh or close/open the app, your device is instantly updated to the latest release. 
This is not simply "a cached webpage." This is a full-blown installed application on par with every other app.
When properly configured, it should continue to run without Internet access indefinitely.
And we can add message caching so they'll be uploaded once the Internet is accessible.

### Under the Hood

<a href="https://github.com/richclingman/rattlegram-pwa" target="_blank">Public Repository for this PWA</a>.

This PWA is built using Nuxt3/VueJs3 with its Content module (see the simple blog pages), and Bulma CSS/SASS. 
It's currently hosted on my paid Netlify account. 
Netlify offers free accounts that should support the Ribbit development and full deployment.

### How I Discovered Ribbit

*Just this past weekend,* I came across the Ribbit presentation in the 
<a href="https://www.youtube.com/watch?v=TGzgIjEt9wA" target="_blank">RATPAC videos</a>
and have watched "every" Ribbit video and tried out the Android Rattlegram app.
Awesome! Great work on the concept, algorithm, and app. Great presentations! I decided to try Ahmet Inan's DSP functions in a PWA to see if it's a viable concept.
I've worked with Web Audio API, but never combined C++ and Javascript to get Web Assembly apps.
This is my first real attempt at a PWA, so I'm sure there are a lot of things to be enhanced.

### 73

I'm a software engineer -- full-stack, back-end, and cloud. 
And I'm an Extra Class Amateur (without much actual radio experience other than 2m).

<a href="https://k0ozk.com/" target="_blank" class="pr-3">Rich Clingman, <callsign></callsign></a>
<br>Ozark, Missouri, USA
