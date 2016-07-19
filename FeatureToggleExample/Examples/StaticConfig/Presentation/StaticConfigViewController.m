//
//  StaticConfigViewController.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 20/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "StaticConfigViewController.h"
#import "ViewControllerConfig.h"

@implementation StaticConfigViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupWithConfig:self.config];
}

- (void)setConfig:(ViewControllerConfig *)config {
    if (config != _config) {
        _config = config;
        [self setupWithConfig:config];
    }
}

- (void)setupWithConfig:(ViewControllerConfig *)config {
    // Позаботились о том, чтобы место ветвления было одно
    if (self.config.articleWasPaid) {
        [self setupPaidArticle];
    } else {
        [self setupWithUnpaidArticle];
    }
}

- (void)setupPaidArticle {
    self.blurView.hidden = YES;
}

- (void)setupWithUnpaidArticle {
    self.blurView.hidden = NO;
}

@end