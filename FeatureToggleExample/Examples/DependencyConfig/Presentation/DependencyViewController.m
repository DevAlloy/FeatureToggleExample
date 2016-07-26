//
//  DependencyViewController.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 26/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "DependencyViewController.h"
#import "ArticlesDataProvider.h"
#import "AdDataProvider.h"
#import "Article.h"

static NSString * const kDependencyCellIdentifier = @"dependencyCell";

@interface DependencyViewController () <UITableViewDataSource>

@property (nonatomic, strong) NSArray *resultArticles;

@end

@implementation DependencyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *articles = [self.articlesDataProvider provideData];
    NSArray *ads = [self.adDataProvider provideData];
    self.resultArticles = [self mixAds:ads withArticles:articles];

    [self setupTableView];
}

- (void)setupTableView {
    [self.tableView reloadData];
}


- (NSArray *)mixAds:(NSArray *)ads withArticles:(NSArray *)articles {
    NSMutableArray *mixedArticles = [articles mutableCopy];
    for (int i = 0; i < ads.count; ++i) {
        [mixedArticles insertObject:ads[i] atIndex:i * 4 + i];
    }

    return [mixedArticles copy];
}

#pragma mark - Таблица

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.resultArticles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDependencyCellIdentifier];
    cell.textLabel.text = ((Article *)self.resultArticles[indexPath.row]).title;
    return cell;
}

@end
