---
title: Ribbit PWA Test
description: Testing use of Web Assembly DSP in a PWA
author: Rich Clingman, K0OZK
---

# Ribbit PWA Test

Ribbit is a an open source enhanced method of sending digital messages during emergencies. 
The concept is that in an emergency, when internet and cell towers are out, people can use the 
most powerful computer virtually every person owns--their smartphone--to 
quickly and reliably pass messages over simple $30 walkie-talkies or business or amateur radio systems. 

### For More on Ribbit

Go to <a href="https://www.ribbitradio.org/" target="_blank">The Ribbit Website</a>.

### Testing GPS, WASM, DSP, PWA

The purpose of this Ribbit PWA Test is to verify that we can make a single application
that will run on the majority of mobile and desktop devices.
For this to happen, your browser must support:

* GPS (Global Positioning System) because it's needed to embed location and the precise time in the messages
* WASM (Web Assembly) which enables us to use C++ DSP code
* DSP (Digital Signal Processing) to mathematically manipulate audio signals
* PWA (Progressive Web Application) which allows this "website" to become an "app" on your device

## Verify GPS

You should see your location and GMT/UTC time displayed in the navigation/menu and footer.
If you click on the Local Map tab, it should open Google Maps at your current location.
(The location reported by your computer may be based on your IP Address 
rather than your physical location.)

## Test the WASM & DSP

Click on 
[The Example 3 Tab](/dsp/example3)
to verify that WASM & DSP is working on your device.
The feature uses your device microphone and the DSP library to verify 
your device has the power to operate. 
You should see three different displays of the sound picked up by your microphone.

## Test PWA

You should see an Install Icon in the browser address bar
or a notification asking if you want to install this application on your device.
This capability is needed so the application can be used in emergency situations
when there is no mobile/Internet service available.
Please install it and verify these simple tests are still working.
Uninstall the app as you would for a normal application.

### Orthagonal Frequency Division Multiplexing

If you're a techy, you'll probably appreciate that Ribbit uses OFDM in audio, 
the same modulation that makes 4G, 5G, and the latest Wifi faster and more reliable.
I love this
<a href="https://www.youtube.com/watch?v=ubPP48ojJ3E" target="_blank">YouTube presentation by Andreas Spiess, HB9BLA</a>.

