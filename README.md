Snippets for Google Glass
=========================

 This repository contains a number of smallish code usable for Google Glass.
 It is intened to serve as boiler plate code for often used features and for those missing from the gdk.
 
 The most current code can be found in the esslib project, it can be build with Android Studio and Gradle.
 Be warned most of this stuff requires a decompiled version of the Glassvoice.apk (included in the repository), so most probably these samples will break with every new xe-firmware release until the Glassvoice.jar file in this repo will be updated.
 It currently contains these functionalities:

## Hello World

 A basic project setup, showing how to use a voice trigger and displaying a simple message.

## Voice Menu

 Another implementation of the Contextual Voice commands menu, phrases can be freely chosen.
 Displaying the menu is optional.

## Head List View

 This sample is included in the voice menu demo.
 Moving your head it allows to scroll a list, like the "ok, glass" menu.
 Implementation can be found in the HeadListView.java file.

## Time Lapse Recorder

 A Camera service that allows to record normal video and time lapses in background.
 Recording with a framerate > 25fps automatically turns on audio recording.
 The preview is displayed constantly, at a specified location with a specified size.

## Head Image View

 Use the AHRS of Glass to watch parts of a zoomed in Image.
 Similar to the Google Glass Team Easter Egg.


