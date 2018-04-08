//
//  UIView+DmExtension.m
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "UIView+DmExtension.h"

@implementation UIView (DmExtension)
-(void)dm_addBorderColor:(UIColor *)color borderWidth:(CGFloat)width{
    self.layer.borderWidth=width;
    self.layer.borderColor=color.CGColor;

}
-(void)dm_addBorderColor:(UIColor *)color{
    self.layer.borderWidth=0.5;
    self.layer.borderColor=color.CGColor;
}
- (void)dm_addBorder {
    self.layer.borderWidth      = 0.5;
    self.layer.borderColor      = [UIColor blackColor].CGColor;
}
- (void)dm_removeBorder {
    self.layer.borderWidth      = 0;
}

- (void)dm_addCorner {
    [self dm_addCornerRadius:5];
}
- (void)dm_addCornerRadius:(CGFloat)radius {
    self.layer.cornerRadius     = radius;
    self.layer.masksToBounds    = YES;
}
@end
