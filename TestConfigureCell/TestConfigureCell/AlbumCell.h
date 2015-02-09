//
//  AlbumCell.h
//  TestConfigureCell
//
//  Created by jewelz on 15-1-18.
//  Copyright (c) 2015年 yangtzeU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumCell : UITableViewCell
+ (UINib *)nib;
@property (nonatomic, weak) IBOutlet UILabel *label;

@end
