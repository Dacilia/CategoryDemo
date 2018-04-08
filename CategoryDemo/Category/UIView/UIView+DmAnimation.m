//
//  UIView+DmAnimation.m
//  CategoryDemo
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "UIView+DmAnimation.h"

@implementation UIView (DmAnimation)
-(void)dm_addRotationAnimationDuration:(CGFloat)duration repeatCount:(NSInteger)repeatCount angle:(CGFloat)angle{
    CABasicAnimation *rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat:angle];
    rotationAnimation.duration = duration;
    rotationAnimation.repeatCount = repeatCount;
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
@end

@implementation UIView (DmTransition)
-(void)dm_addTransitionAnimationDuration:(CGFloat)duration repeatCount:(NSInteger)repeatCount subtype:(NSString *)subtype type:(NSString *)type{
    CATransition *animation = [CATransition animation];
    animation.type = type;
    animation.subtype = subtype;
    animation.duration = duration;
    animation.repeatCount=repeatCount;
    [animation setValue:@"fade" forKey:@"animType"];
    [self.layer addAnimation:animation forKey:nil];
}
@end
