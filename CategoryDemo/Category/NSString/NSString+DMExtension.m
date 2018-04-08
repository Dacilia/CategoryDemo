//
//  NSString+DMExtension.m
//  ZT_Seller
//
//  Created by LDZ on 2017/11/9.
//  Copyright © 2017年 LDZ. All rights reserved.
//

#import "NSString+DMExtension.h"

@implementation NSString (DMExtension)
+(CGRect)dm_heightStr:(NSString *)str width:(CGFloat)width height:(CGFloat)height sizefont:(CGFloat)font{
    CGRect rect=[str boundingRectWithSize:CGSizeMake(width, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil];
    return rect;
}
@end
