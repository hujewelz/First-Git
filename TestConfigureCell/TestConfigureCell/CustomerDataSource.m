//
//  CustomerDataSource.m
//  TestConfigureCell
//
//  Created by jewelz on 15-1-18.
//  Copyright (c) 2015年 yangtzeU. All rights reserved.
//

#import "CustomerDataSource.h"
#import "AlbumCell.h"

@interface CustomerDataSource()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *identifer;
@property (nonatomic, copy) configureCell cellBlock;
@end

@implementation CustomerDataSource
- (id)init
{
    return nil;
}

-(id)initWithItems:(NSArray *)items cellIdentifer:(NSString *)identifer configureCellBlock:(configureCell)block
{
    self = [super init];
    if (self) {
        _items = items;
        _identifer = [identifer copy];
        _cellBlock = [block copy];
    }
    return self;
}

- (id)initWithItems:(NSArray *)items cellIdentifer:(NSString *)identifer configureCellDelegate:(id<CustomerCellDelegate>)delegate
{
    self = [super init];
    if (self) {
        _items = items;
        _identifer = identifer;
        _delegate = delegate;
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.items[(NSInteger)indexPath.row];
}

#pragma mark tableview datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_identifer forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    _cellBlock(cell, item);
    //[self.delegate customerCell:cell withItem:item];
    return cell;
}









@end



