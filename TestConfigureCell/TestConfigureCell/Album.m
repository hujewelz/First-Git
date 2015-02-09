//
//  Album.m
//  TestConfigureCell
//
//  Created by jewelz on 15-1-18.
//  Copyright (c) 2015年 yangtzeU. All rights reserved.
//

#import "Album.h"

@implementation Album
- (id)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}
+ (id)albumWithName:(NSString *)name
{
    return [[self alloc] initWithName:name];
}

@end
