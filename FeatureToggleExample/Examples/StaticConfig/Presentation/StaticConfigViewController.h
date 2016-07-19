//
//  StaticConfigViewController.h
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 20/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ViewControllerConfig;

@interface StaticConfigViewController : UIViewController

@property (nonatomic, copy) ViewControllerConfig *config;

@property (weak, nonatomic) IBOutlet UIVisualEffectView *blurView;

@end