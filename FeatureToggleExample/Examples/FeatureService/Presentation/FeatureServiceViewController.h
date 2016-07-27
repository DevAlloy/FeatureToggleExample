//
//  FeatureServiceViewController.h
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 27/07/16.
//  Copyright (c) 2016 DevAlloy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol FeatureService;

@interface FeatureServiceViewController : UIViewController

@property (nonatomic, strong) id<FeatureService> featureService;

@end
