//
//  UIImage+DmColor.h
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
// 该类主要是和uiimage颜色相关的扩展

#import <UIKit/UIKit.h>

@interface UIImage (DmColor)
/** 根据颜色生成纯色图片 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/** 取图片某一像素的颜色 */
- (UIColor *)colorAtThePixelPoint:(CGPoint)point;

/** 获得灰度图 */
- (UIImage *)convertToGrayImage;
@end
