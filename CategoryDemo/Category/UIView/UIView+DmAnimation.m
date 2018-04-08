//
//  UIView+DmAnimation.m
//  CategoryDemo
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "UIView+DmAnimation.h"

@implementation UIView (DmAnimation)
-(void)dm_addRotationAnimationTime:(CGFloat)time timeCount:(NSInteger)timeCount angle:(CGFloat)angle{
    CABasicAnimation *rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat:angle];
    rotationAnimation.duration = time;
    rotationAnimation.repeatCount = timeCount;
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
@end
