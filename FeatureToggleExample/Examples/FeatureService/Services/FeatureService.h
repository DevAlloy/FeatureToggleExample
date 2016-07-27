//
//  FeatureService.h
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 27/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FeatureService <NSObject>

- (BOOL)hasToShowAd;

@end