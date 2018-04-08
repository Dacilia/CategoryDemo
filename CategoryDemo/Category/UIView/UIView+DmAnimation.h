//
//  UIView+DmAnimation.h
//  CategoryDemo
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DmAnimation)

/**
 给view添加绕Z轴旋转的动画

 @param time 动画时长
 @param timeCount 动画次数
 @param angle 动画角度
 */
-(void)dm_addRotationAnimationTime:(CGFloat)time timeCount:(NSInteger)timeCount angle:(CGFloat)angle;


@end
