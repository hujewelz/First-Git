//
//  ViewController.m
//  TestConfigureCell
//
//  Created by jewelz on 15-1-18.
//  Copyright (c) 2015年 yangtzeU. All rights reserved.
//

#import "ViewController.h"
#import "CustomerDataSource.h"
#import "Album.h"
#import "AlbumCell.h"

@interface ViewController () <CustomerCellDelegate>
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) CustomerDataSource *customerDataSource;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Album *album = [Album albumWithName:@"分手大啊发达省份的"];
    Album *album2 = [Album albumWithName:@"等方式方法"];
    Album *album3 = [Album albumWithName:@"dvcrgretr"];
    Album *album4 = [Album albumWithName:@"uyungfcvcv"];
    Album *album5 = [Album albumWithName:@"地方撒舒服个人天"];
    Album *album6 = [Album albumWithName:@"突然有体育观光吧"];
    _items = @[album, album2, album3, album4, album5, album6];
    
    [self setUpTableview];
    
}

- (void)setUpTableview {

    //方式一：使用block做方法回调,在block中定义cell的具体行为
    configureCell configureCellBlock = ^(AlbumCell *cell, Album *a) {
        
        cell.label.text = a.name;
        NSLog(@"hahahhaa%@", a.name);
        
    };
    
    _customerDataSource = [[CustomerDataSource alloc] initWithItems:_items cellIdentifer:@"Cell" configureCellBlock: configureCellBlock];
    
    //方式二：使用代理，在代理中定义cell的具体行为
    //_customerDataSource = [[CustomerDataSource alloc] initWithItems:_items cellIdentifer:@"Cell" configureCellDelegate:self];
    
    self.tableview.dataSource = _customerDataSource;
}

#pragma mark CustomerCell Delegate
- (void)customerCell:(AlbumCell *)cell withItem:(Album *)item
{
 
    AlbumCell *aCell = cell;
    cell.contentView.backgroundColor = [self setColor:_num++];
    aCell.label.text = item.name;
    NSLog(@"%@", item.name);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor *)setColor:(NSInteger)num
{
    UIColor *color;
    BOOL setColr = num%2 ==0;
    switch (setColr) {
        case YES:
            color = [UIColor blueColor];
            break;
            
        default:
            color = [UIColor redColor];
            break;
    }
    return color;
}

@end
