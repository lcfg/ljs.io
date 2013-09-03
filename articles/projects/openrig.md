## Current Status ##

I am working on micro-project \#1, writing an [Audio Unit][proj0] application using the
excellent [blog post][proj1] by [Fred Ghilini][proj2] as a guide. Thanks Fred!

I will upload a repo to github soon and post the link here.

## What Is OpenRig? ##

Openrig is a nascent project intended to be an open-source guitar amp and effect simulator in
the vein of [Guitar Rig][0], [Overloud TH2][1], and [Amplitube][2] (though I by no means intend
to arrogantly suggest it will achieve the quality of these rather fantastic applications :)

## Why? ##

I love playing the guitar and I want to play around with audio development and
[signal processing][3] and work on a hobby codebase written in a lower-level language and
optimised for performance. I also wanted to find a project where I feel [CUDA][4] could be
usefully deployed, all criteria which OpenRig fits rather well.

Also, because it's fun :-D

## How? ##

Language-wise I intend to write it mostly in C and CUDA with a little Objective C (the initial
target will be mac for convenience.)

It may be the case that latency concerns exclude CUDA, whereby I don't rule out playing around
with some custom [DSP][5] [hardware][6]... But let's not get ahead of ourselves :-)

## Seriously Though, How? ##

Project-by-project. I intend to work on smaller projects working slowly towards the final
goal - as I complete a small project I will use that experience to decide which project to do
next. Over time the projects will build up my knowledge and provide a base of code with which to
finally go ahead and build the first version of OpenRig itself.

I'm sure this isn't all that innovative an approach, but it rather excites me. At no point will
I have the sense of working on something overwhelmingly large, even when I come to combine the
projects to build the first version of OpenRig the work I will have done will have made that a
small project too.

[0]:http://www.native-instruments.com/en/products/komplete/guitar/guitar-rig-5-pro/
[1]:http://overloud.com/products/th2.php
[2]:http://www.ikmultimedia.com/products/cat-view.php?C=family-amplitube
[3]:http://en.wikipedia.org/wiki/Signal_processing
[4]:http://www.nvidia.com/object/cuda_home_new.html
[5]:http://en.wikipedia.org/wiki/Digital_signal_processor
[6]:http://www.analog.com/en/processors-dsp/tigersharc/products/index.html

[proj0]:http://en.wikipedia.org/wiki/Audio_Unit
[proj1]:http://sample-hold.com/2011/11/23/getting-started-with-audio-units-on-os-x-lion-and-xcode-4-2-1/
[proj2]:http://sample-hold.com/about/
