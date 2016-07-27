//
//  FeatureServiceViewController.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 27/07/16.
//  Copyright (c) 2016 DevAlloy. All rights reserved.
//

#import "FeatureServiceViewController.h"
#import "FeatureService.h"
#import "FeatureServiceImplementation.h"

@implementation FeatureServiceViewController

- (id <FeatureService>)featureService {
    // Тот же момент про инъекцию зависимостей
    if (!_featureService) {
        _featureService = [FeatureServiceImplementation new];
    }
    return _featureService;
}

- (void)viewDidLoad {
    BOOL hasToShowAd = [self.featureService hasToShowAd];
    if (hasToShowAd) {
        [self showAd];
    }
}

- (void)showAd {
    [self performSegueWithIdentifier:@"showAd" sender:self];
}

@end
