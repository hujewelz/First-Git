//
//  Album.h
//  TestConfigureCell
//
//  Created by jewelz on 15-1-18.
//  Copyright (c) 2015年 yangtzeU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject
@property (nonatomic, copy) NSString *name;

- (id)initWithName:(NSString *)name;
+ (id)albumWithName:(NSString *)name;
@end
