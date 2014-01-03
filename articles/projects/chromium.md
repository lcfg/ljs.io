# Chromium #

I am a contributor to the [chromium][0] and [blink][1] open source projects.

## Fixed Issues ##

* [306521][chr1issue] - The mouse pointer unexpectedly disappeared on mac after cmd+T, cmd+N, etc.
* [305913][chr2issue] - Setting the font size to very large font caused the settings side menu to clip horribly.
* [276757][chr8issue] - Blur event was  being duplicated, causing the tab to hang under certain circumstances.
* [292119][chr9issue] - Deleting an item from the off-the-side menu on mac broke scrolling in the menu.

## Patches ##

1. [Don't hide cursor when cmd key pressed on mac][chr1] - Fixed issue [306521][chr1issue].
2. [Use proportional line height for menu items to prevent clipping][chr2] - Fixed issue [305913][chr2issue].
3. [Dispatch DOM FocusIn/Out events when the page changes focus][chr3] - Prerequisite for 5.
4. [Make content shell activate and focus dev tools on show][chr4] - Prerequisite for 5.
5. [Don't dispatch blur/focus events if the element's page is not focused][chr5] - Attempt to fix issue [276757][chr8issue], however was reverted due to flaking test.
6. [Fix closing tags, missing quotes in test HTML file][chr6] - Trivial cleanup.
7. [Ensure view focused on first tab in FocusTraversal test][chr7] - Prerequisite for 8.
8. [Don't dispatch blur/focus events if the element's page is not focused][chr8] - Once 7 landed I was able to fix issue [276757][chr8issue].
9. [Remove unnecessary menu reconfigure][chr9] - Fixed issue [292119][chr9issue].
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
[chr6]:https://src.chromium.org/viewvc/chrome?revision=239988&view=revision
[chr7]:https://src.chromium.org/viewvc/chrome?revision=240279&view=revision
[chr8]:https://src.chromium.org/viewvc/blink?revision=164069&view=revision
[chr8issue]:https://code.google.com/p/chromium/issues/detail?id=276757
[chr9]:https://src.chromium.org/viewvc/chrome?revision=242801&view=revision
[chr9issue]:https://code.google.com/p/chromium/issues/detail?id=292119
