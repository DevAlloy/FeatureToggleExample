//
//  ArticlesDataProvider.m
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 26/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import "ArticlesDataProvider.h"
#import "Article.h"

@implementation ArticlesDataProvider

- (NSArray *)provideData {
    NSMutableArray *articleTempArray = [NSMutableArray new];

    for (int i = 0; i < 20; ++i) {
        Article *article = [Article new];
        article.title = @"Article title";
        [articleTempArray addObject:article];
    }

    return [articleTempArray copy];
}

@end