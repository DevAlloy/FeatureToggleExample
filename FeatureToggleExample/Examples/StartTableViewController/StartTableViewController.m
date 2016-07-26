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

static NSString * const kConfigSegueIdentifier = @"configSegue";
static NSString * const kDependencySegueIdentifier = @"dependecySegue";

@interface StartTableViewController ()

@property (nonatomic) BOOL showAd;

@end

@implementation StartTableViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:kConfigSegueIdentifier]) {
        StaticConfigViewController *staticConfigViewController = segue.destinationViewController;

        // Для простоты будем подставлять значение articleWasPaid случайным образом
        ViewControllerConfig *viewControllerConfig = [ViewControllerConfig new];
        viewControllerConfig.articleWasPaid = arc4random() % 2;

        staticConfigViewController.config = viewControllerConfig;
    } else if ([segue.identifier isEqualToString:kDependencySegueIdentifier]) {
        
    }
}

- (IBAction)withoutAdButtonWasPressed:(id)sender {
    self.showAd = NO;
    [self performSegueWithIdentifier:kDependencySegueIdentifier sender:self];
}

- (IBAction)withAdButtonWasPressed:(id)sender {
    self.showAd = YES;
    [self performSegueWithIdentifier:kDependencySegueIdentifier sender:self];
}

@end
