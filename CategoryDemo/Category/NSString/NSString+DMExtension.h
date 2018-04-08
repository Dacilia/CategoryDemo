//
//  NSString+DMExtension.h
//  ZT_Seller
//
//  Created by LDZ on 2017/11/9.
//  Copyright © 2017年 LDZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (DMExtension)
/**
 计算特定文字的宽度或者高度
 
 @param str 闯入的str
 @param width 宽度
 @param height 高度
 @param font 字体大小
 @return cgrect
 */
+(CGRect)dm_heightStr:(NSString*)str width:(CGFloat)width height:(CGFloat)height sizefont:(CGFloat)font;
@end
