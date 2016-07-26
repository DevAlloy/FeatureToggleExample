//
//  AdDataProvider.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 26/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "AdDataProvider.h"
#import "Article.h"

@implementation AdDataProvider

- (NSArray *)provideData {
    NSMutableArray *articleTempArray = [NSMutableArray new];

    for (int i = 0; i < 4; ++i) {
        Article *article = [Article new];
        article.title = @"Ad title";
        [articleTempArray addObject:article];
    }

    return [articleTempArray copy];
}

@end