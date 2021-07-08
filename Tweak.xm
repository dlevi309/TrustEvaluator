%hook MCProfileTrustEvaluator
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)arg1 { return YES; }
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)arg1 { return YES; }
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)arg1 { return YES; }
%end

%hook MCProfile
-(unsigned long long)targetDeviceType { return 1; }
%end