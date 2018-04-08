//
//  DmeoCell.h
//  CategoryDemo
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import <UIKit/UIKit.h>
static NSString*const KIDDmeoCell=@"KIDDmeoCell";
static CGFloat const KHeightDmeoCell=50;
@interface DmeoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;

@end
