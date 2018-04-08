//
//  UIView+DmExtension.h
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DmExtension)
/**
 添加边框

 @param color 边框颜色
 */
-(void)dm_addBorderColor:(UIColor*)color;
/**
 * 添加边框
 */
- (void)dm_addBorder;
/**
 * 移除边框
 */
- (void)dm_removeBorder;

/**
 * 添加半径为5 的圆角
 */
- (void)dm_addCorner;
/**
 * 添加圆角
 */
- (void)dm_addCornerRadius:(CGFloat)radius;
@end
