//
//  UIImageView+DmImage.h
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (DmImage)
/**
 * 设置图片url string
 */
- (void)dm_setImageWithUrlString:(NSString *)urlString;
- (void)dm_setImageWithUrlString:(NSString *)urlString placeholder:(NSString *)placeholder;

/**
 创建imageView

 @param contenModel contenModel
 @param imageStr  Nsstring
 （1）UIViewContentModeScaleToFill属性会导致图片变形。

 （2）UIViewContentModeScaleAspectFit会保证图片比例不变，而且全部显示在ImageView中，这意味着ImageView会有部分空白。

 （3）UIViewContentModeScaleAspectFill也会证图片比例不变，但是是填充整个ImageView的，可能只有部分图片显示出来。
 */
+ (instancetype)dm_imageVIewContenModel:(UIViewContentMode)contenModel imageStr:(NSString*)imageStr;
@end
