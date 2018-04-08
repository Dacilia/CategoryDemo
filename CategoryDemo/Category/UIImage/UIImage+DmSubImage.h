//
//  UIImage+DmSubImage.h
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//  该类主要是得到一个新的image的方法

#import <UIKit/UIKit.h>

@interface UIImage (DmSubImage)
/** 截取当前image对象rect区域内的图像 */
- (UIImage *)subImageWithRect:(CGRect)rect;

/** 压缩图片至指定尺寸 */
- (UIImage *)rescaleImageToSize:(CGSize)size;

/** 压缩图片至指定像素 */
- (UIImage *)rescaleImageToPX:(CGFloat )toPX;

/** 在指定的size里面生成一个平铺的图片 */
- (UIImage *)getTiledImageWithSize:(CGSize)size;

/** UIView转化为UIImage */
+ (UIImage *)imageFromView:(UIView *)view;

/** 将两个图片生成一张图片 */
+ (UIImage*)mergeImage:(UIImage*)firstImage withImage:(UIImage*)secondImage;
/**
 *  无渲染图片
 */
- (UIImage *)dm_originalImageNamed:(NSString *)name;

/**
 *  裁剪为圆形图片
 */
- (UIImage *)dm_circleImage;

/**
 *  将图片缩放到指定尺寸
 */
- (UIImage *)dm_imageScaleToSize:(CGSize)size;
/**
 *  将图片缩放到指定的限定范围内(min ~ max)
 */
- (UIImage *)dm_imageScaleToMax:(CGFloat)max min:(CGFloat)min;


#pragma mark - 颜色图片
/**
 *  1*1 的纯色图片
 */
+ (UIImage *)dm_imageWithColor:(UIColor *)color;
/**
 *  指定尺寸纯色图片
 */
+ (UIImage *)dm_imageWithColor:(UIColor *)color size:(CGSize)size;

#pragma mark - 文字图片
/**
 *  文字图片
 */
+ (UIImage *)dm_imageWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color;

/**
 * 生成二维码图片
 *
 * @param string    二维码的字符串
 * @param size      图片的宽高尺寸
 */
+ (UIImage *)dm_QRImageWithString:(NSString *)string size:(CGFloat)size;
/**
 普通图片

 @param name 图片名字
 @param isScale 是否需要压缩
 @param scale 压缩系数
 @return 图片
 */
+ (UIImage *)dm_imageWithName:(NSString *)name isScale:(BOOL)isScale scale:(float)scale;

/**
 高亮或者选中图片

 @param name 图片名字
 @param isScale 是否需要压缩
 @param scale 压缩系数
 @return 图片
 */
+ (UIImage *)dm_imageHighlightedWithName:(NSString *)name isScale:(BOOL)isScale scale:(float)scale;
/**
 * 等比压缩图片
 */
- (UIImage *)dm_imageWithScale:(float)scale;
/**
 * 解析二维码图片表示的字符串
 */
- (NSString *)dm_QRString;
@end
