//
//  StartTableViewController.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 20/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "StartTableViewController.h"
#import "StaticConfigViewController.h"
#import "ViewControllerConfig.h"

@implementation StartTableViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"configSegue"]) {
        StaticConfigViewController *staticConfigViewController = segue.destinationViewController;

        // Для простоты будем подставлять значение articleWasPaid случайным образом
        ViewControllerConfig *viewControllerConfig = [ViewControllerConfig new];
        viewControllerConfig.articleWasPaid = arc4random() % 2;

        staticConfigViewController.config = viewControllerConfig;
    }
}

@end
