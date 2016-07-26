//
//  DependencyViewController.h
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 26/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ArticlesDataProvider;
@class AdDataProvider;

@interface DependencyViewController : UITableViewController

@property (nonatomic, strong) ArticlesDataProvider *articlesDataProvider;
@property (nonatomic, strong) AdDataProvider *adDataProvider;

@end
