---
title: GPS
description: Why Ribbit PWA Test is using GPS
author: Rich Clingman, K0OZK
---

# GPS: Global Positioning System

For emergency communications, it's vital to know the sender's location and the
precise time of the transmission. 
And in contests, accurate position (and GridSquare) are needed.
This app is using GS10 (10-character GridSquare code) which provides
[an accuracy of 19 meters](https://github.com/richclingman/maidenhead-qth-gridsquare/blob/main/README.md#accuracy-provided-by-gridsquare).

To accomplish this, Ribbit utilizes the GPS in your computer or smartphone.

Currently, this app updates the GPS information every five seconds.
Then, when sending a message, the app will get the current position and time.

<update-geo-button></update-geo-button>
