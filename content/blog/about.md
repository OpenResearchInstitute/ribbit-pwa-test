---
title: About Rattlegram PWA
description: What's this Rattling all about? Ribbit!
author: Rich Clingman, K0OZK
---

# About This Rattlegram Test PWA

Thursday, August 17, 2023

### DSP, WASM, PWA

I've published this basic Progressive Web Application using 
[Example 3 from Ahmet's 2019 Digital Signal Processing Library/Web Assembly work](https://www.aicodix.de/example3/).

This basic app will allow us to test the PWA, DSP, WASM on various devices to see if pursuing a device-agnostic/single codebase PWA could be beneficial. 
I've tested the PWA on Windows and Android 11. It should work on all PWA and Web Assembly-compliant browsers. It should be "installable" on those devices as well.

It's very likely we'll find problems with this test PWA. I did only minimal wrapping of Ahmet's Example 3 JS code.

### Why PWA? 

In addition to watching all available presentations on Ribbit, I read the few emails archived in the ORI mailing lists. Josh Datko raised the issue of a PWA in the July discussion. 
I think a PWA will speed up development and adoption. It'll also allow us to deploy Windows/Mac/Linux support at the same time. 
There'd be no need for device-specific apps. No app store. The PWA should run--and be installable--on IOS, Android, Windows, Mac, Chrome, virtually anything with a browser that supports the necessary features. 

### In an Emergency Situation 

The App Store and Play Store will be inaccessible. No one can use Ribbit if they've not already installed it.

But this PWA could be distributed via an ad-hoc web server at the EOC or *even one running on our smartphones.* 


### Imagine... 

You join my phone's hotspot. You scan the QR code on my phone. Your browser loads the Ribbit PWA and asks if you want to install it. 
No internet. Then you turn around and offer the PWA to the next ham. I think this could be done.

### Development and Deployment

This test PWA is already set up with CI/CD. The latest release is built and deployed to the production site 
within a couple minutes of code being pushed to the repository.

### Update the App on All Your Devices

You don't need to reinstall the app.
My experience is that if you right-click/refresh or close/open the app, your device is instantly updated to the latest release. 
This is not simply "a cached webpage." This is a full-blown installed application on par with every other app. 
It should continue to run without Internet access indefinitely.
Future features will do the message and statistics uploads you've made as objectives.

### Under the Hood

This PWA is built using Nuxt3/VueJs3 with its Content module (see the simple blog pages), and Bulma CSS/SASS. It's hosted on Netlify. 
I have a paid account, but we can set up a free Netlify account to host PWA development and release if/when we're ready.

### How I Discovered Ribbit

*Just this past weekend,* I came across the Ribbit presentation in the RATPAC listings and have watched "every" Ribbit video and tried out the Android Rattlegram app. 
AWESOME! Great work on the concept, algorithm and app. Great presentations! I decided to try Ahmet's DSP functions in a PWA to see if it's a viable concept.
I've worked with Web Audio API, but never combined C++ and Javascript to get Web Assembly.

### 73

I'm a software engineer -- full-stack and Cloud. And I'm an Extra Class Amateur (without much actual radio experience other than 2m).

Rich Clingman, K0OZK
<br>Ozark, Missouri, USA
