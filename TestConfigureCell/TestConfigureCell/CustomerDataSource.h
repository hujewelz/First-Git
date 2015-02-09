//
//  CustomerDataSource.h
//  TestConfigureCell
//
//  Created by jewelz on 15-1-18.
//  Copyright (c) 2015年 yangtzeU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef void (^configureCell)(id ,id) ;
@protocol CustomerCellDelegate <NSObject>

- (void)customerCell:(id)cell withItem:(id)item;

@end
@interface CustomerDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<CustomerCellDelegate>delegate;

-(id)initWithItems:(NSArray *)items cellIdentifer:(NSString *)identifer configureCellBlock:(configureCell)block;
-(id)initWithItems:(NSArray *)items cellIdentifer:(NSString *)identifer configureCellDelegate:(id<CustomerCellDelegate>)delegate;


@end
