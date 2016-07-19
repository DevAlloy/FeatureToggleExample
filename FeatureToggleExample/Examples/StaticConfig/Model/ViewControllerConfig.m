//
//  ViewControllerConfig.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 20/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "ViewControllerConfig.h"

@implementation ViewControllerConfig

- (id)copyWithZone:(NSZone *)zone {
    ViewControllerConfig *copy = [[[self class] allocWithZone:zone] init];

    if (copy != nil) {
        copy.articleWasPaid = self.articleWasPaid;
    }

    return copy;
}

@end