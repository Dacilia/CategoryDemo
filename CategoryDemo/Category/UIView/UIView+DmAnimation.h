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

 @param duration 动画时长
 @param repeatCount 动画次数
 @param angle 动画角度
 */
-(void)dm_addRotationAnimationDuration:(CGFloat)duration repeatCount:(NSInteger)repeatCount angle:(CGFloat)angle;


@end
//过度动画
@interface UIView (DmTransition)
//@"fade交叉淡化过度的效果",
//@"push 新视图把旧视图推出去",
//@"moveIn新视图移到旧视图上面",
//@"reveal将旧视图移开，显示新视图",
//@"cube立方体翻滚的效果",
//@"oglFlip上下左右翻转的效果",
//@"suckEffect收缩效果，如一块布被抽走",
//@"rippleEffect水滴效果（像是在屏幕上滴了一滴水，然后泛起一下涟漪）",
//@"pageCurl向上翻页效果",
//@"pageUnCurl向下翻页效果",
//@"cameraIrisHollowOpen相机镜头打开效果",
//@"cameraIrisHollowClose相机镜头关闭效果"

/**
 给view添加过度效果

 @param time 动画时长
 @param repeatCount 动画重复次数
 @param subtype fromLeft', `fromRight', `fromTop' and `fromBottom
 @param type 动画的效果 eg push \ moveIn
 */
-(void)dm_addTransitionAnimationDuration:(CGFloat)duration repeatCount:(NSInteger)repeatCount subtype:(NSString*)subtype type:(NSString*)type;
@end
