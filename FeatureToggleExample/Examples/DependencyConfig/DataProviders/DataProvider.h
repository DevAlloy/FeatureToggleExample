//
//  DataProvider.h
//  FeatureToggleExample
//
//  Created by Tsyganov Stanislav on 26/07/16.
//  Copyright © 2016 DevAlloy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataProvider <NSObject>

@required

- (NSArray *)provideData;

@end