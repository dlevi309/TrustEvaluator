# TrustEvaluator

This doesn’t work on profiles with expired certificates, only profiles with no signature. Luckily, it’s quite easy to strip a profile of this, you just need to cut the XML portion of the .mobileconfig file and paste it into a newly created XML document (you can then proceed to remove some keys such as the ‘RemovalDate’ for example). After that, just change the file extension from .xml to .mobileconfig, and Airdrop the unsigned profile to your device. The profile will stay installed regardless of being jailbroken or not.

Check the 'Example' directory of this repo for an example of creating an unsigned profile that can write defaults 

I've also put together an extensive [list](https://gist.github.com/dlevi309/92c490de8dc0e2357fb2afceceb9703c) of every single setting written when installing profiles from [Apple's Developer portal](https://developer.apple.com/bug-reporting/profiles-and-logs/)
