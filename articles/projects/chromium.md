# Chromium #

I am a contributor to the [chromium][0] and [blink][1] projects. I am just starting out but
hope to become a regular contributor.

## Patches ##

These are the patches I've got into Chromium and Blink so far:-

1. [Don't hide cursor when cmd key pressed on mac.][chr1] - When using keyboard shortcuts,
e.g. cmd+T, chromium would hide the pointer unnecessarily. This was particularly obvious in the
case of opening a tab - [issue][chr1issue].
2. [Use proportional line height for menu items to prevent clipping.][chr2] - Setting the font
size to 'Very Large' in settings caused the items of the lefthand menu in this page to clip - [issue][chr2issue].
3. [Dispatch DOM FocusIn/Out events when the page changes focus.][chr3] - Prerequisite for 5.
4. [Make content shell activate and focus dev tools on show.][chr4] - Prerequisite for 5.
5. [Don't dispatch blur/focus events if the element's page is not focused.][chr5]
[issue][chr5issue] - Unfortunately this was later reverted due to a test outside of blink flaking and some unexpected perf regressions :'-( working on a fix...

[0]:http://www.chromium.org/
[1]:http://www.chromium.org/blink

[chr1]:https://src.chromium.org/viewvc/chrome?revision=229029&view=revision
[chr1issue]:https://code.google.com/p/chromium/issues/detail?id=306521
[chr2]:https://src.chromium.org/viewvc/chrome?revision=236421&view=revision
[chr2issue]:https://code.google.com/p/chromium/issues/detail?id=305913
[chr3]:https://src.chromium.org/viewvc/blink?revision=159293&view=revision
[chr4]:https://src.chromium.org/viewvc/chrome?revision=229709&view=revision
[chr5]:https://src.chromium.org/viewvc/blink?revision=160036&view=revision
[chr5issue]:https://code.google.com/p/chromium/issues/detail?id=276757
