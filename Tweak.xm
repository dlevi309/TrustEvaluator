/* This doesn’t work on profiles with expired certificates, only profiles with no signature. Luckily, it’s quite easy to strip a profile of this, you just need to cut the XML portion of the .mobileconfig file and paste it into a newly created XML document (you can then proceed to remove some keys such as the ‘RemovalDate’ for example). After that, just change the file extension from .xml to .mobileconfig, and Airdrop the unsigned profile to your device. The profile will stay installed regardless of being jailbroken or not. */

%hook MCProfileTrustEvaluator
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)arg1 { return YES; }
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)arg1 { return YES; }
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)arg1 { return YES; }
%end

%hook MCProfile
-(unsigned long long)targetDeviceType { return 1; }
%end