#import <UIKit/UIKit.h>

%hook YTColdConfig
- (bool)musicClientConfigEnableCastButtonOnPlayerHeader {
	return NO;
}

- (bool)musicClientConfigEnableCastButtonInMiniPlayer {
	return NO;
}
%end

%hook YTMPlayerHeaderView
- (id)initWithCastButtonEnabled:(bool)arg1 {
	arg1 = NO;
	return %orig;
}
%end

%hook YTMSettings
- (bool)castButtonOnPlayerHeaderEnabled {
	return NO;
}

- (bool)castButtonOnMoreSurfacesEnabled {
	return NO;
}

- (bool)castButtonInMiniPlayerEnabled {
	return NO;
}
%end
