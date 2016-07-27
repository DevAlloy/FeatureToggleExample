//
//  FeatureServiceImplementation.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 27/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "FeatureServiceImplementation.h"
#import "Constants.h"

static NSTimeInterval const kAdShowThreshold = 5 * 60;

@implementation FeatureServiceImplementation

- (BOOL)hasToShowAd {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSDate *adWasShownLastTime = [userDefaults valueForKey:kAdWasShownLastTimeIdentifier];
    adWasShownLastTime = adWasShownLastTime ?: [NSDate distantPast];
    NSDate *thresholdDate = [NSDate dateWithTimeIntervalSinceNow:-kAdShowThreshold];

    if ([adWasShownLastTime compare:thresholdDate] == NSOrderedAscending) {
        return YES;
    } else {
        return NO;
    }
}


@end