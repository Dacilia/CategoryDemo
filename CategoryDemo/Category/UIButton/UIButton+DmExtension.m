//
//  UIButton+DmExtension.m
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "UIButton+DmExtension.h"
#import "UIImage+DmSubImage.h"
@implementation UIButton (DmExtension)
-(void)dm_setNormalImage:(NSString*)image isScale:(BOOL)isScale scale:(CGFloat)scale{
    [self setImage:[UIImage dm_imageWithName:image isScale:isScale scale:scale] forState:UIControlStateNormal];
}
-(void)dm_setNormalAndSelectedImage:(NSString*)image isScale:(BOOL)isScale scale:(CGFloat)scale{
    [self setImage:[UIImage dm_imageWithName:image isScale:isScale scale:scale] forState:UIControlStateNormal];
    [self setImage:[UIImage dm_imageHighlightedWithName:image isScale:isScale scale:scale] forState:UIControlStateSelected];
}
- (void)dm_setNormalImage:(NSString *)image {
    [self setImage:[UIImage dm_imageWithName:image isScale:NO scale:0] forState:UIControlStateNormal];
}

- (void)dm_setHighlightedImage:(NSString *)image {
    [self setImage:[UIImage dm_imageHighlightedWithName:image isScale:NO scale:0] forState:UIControlStateHighlighted];
}

- (void)dm_setSelectedImage:(NSString *)image {
    [self setImage:[UIImage dm_imageHighlightedWithName:image isScale:NO scale:0] forState:UIControlStateSelected];
}

- (void)dm_setNormalAndHighlightedImage:(NSString *)image {
    [self dm_setNormalImage:image];
    [self dm_setHighlightedImage:image];
}

- (void)dm_setNormalAndSelectedImage:(NSString *)image {
    [self dm_setNormalImage:image];
    [self dm_setSelectedImage:image];
}
+(instancetype)dm_buttonWithtitle:(NSString*)title backgroudcolor:(UIColor*)bgColor target:(id)target action:(SEL)action{
    UIButton*button=[UIButton buttonWithType:UIButtonTypeCustom];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    [button setBackgroundColor:bgColor];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
@end
