//
//  AdViewController.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 27/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "AdViewController.h"
#import "Constants.h"

@interface AdViewController ()

@end

@implementation AdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setValue:[NSDate date] forKey:kAdWasShownLastTimeIdentifier];
    [userDefaults synchronize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
