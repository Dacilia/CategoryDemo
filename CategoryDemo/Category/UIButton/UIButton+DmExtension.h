//
//  UIButton+DmExtension.h
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DmExtension)
-(void)dm_setNormalImage:(NSString*)image isScale:(BOOL)isScale scale:(CGFloat)scale;
-(void)dm_setNormalAndSelectedImage:(NSString*)image isScale:(BOOL)isScale scale:(CGFloat)scale;
/**
 * 设置按钮 normal 状态图片
 */
- (void)dm_setNormalImage:(NSString *)image;

/**
 * 设置按钮 highlighted 状态图片
 */
- (void)dm_setHighlightedImage:(NSString *)image;

/**
 * 设置按钮 selected 状态图片
 */
- (void)dm_setSelectedImage:(NSString *)image;

/**
 * 设置按钮 normal + highlighted 状态图片
 */
- (void)dm_setNormalAndHighlightedImage:(NSString *)image;

/**
 * 设置按钮 normal + selected 状态图片
 */
- (void)dm_setNormalAndSelectedImage:(NSString *)image;

/**
 创建文字button

 @param title 按钮文字
 @param bgColor 按钮背景颜色
 @param target 按钮代理
 @param action 按钮事件
 @return button
 */
+(instancetype)dm_buttonWithtitle:(NSString*)title backgroudcolor:(UIColor*)bgColor target:(id)target action:(SEL)action;
@end
