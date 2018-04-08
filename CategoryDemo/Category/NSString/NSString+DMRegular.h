//
//  NSString+DMRegular.h
//  ZTEducation
//
//  Created by 李达志 on 2018/3/12.
//  Copyright © 2018年 LDZ. All rights reserved.
//  一些常用的正则表达式

#import <Foundation/Foundation.h>

@interface NSString (DMRegular)

/**
 判断是不是纯数字0-9
 正则表达式是 @"^[0-9]*$"
 @param orignString 需要判断的字符串
 @return yes 符合 No不符合
 */
+(BOOL)dmStringIsPureNumberOriginString:(NSString *)orignString;

/**
 正则判断

 @param regularString 正则表达式
 @param orignString 需要判断的字符串
 @return YES是符合 NO是不符合
 */
+(BOOL)dmAccordwithRegularString:(NSString*)regularString originString:(NSString *)orignString;
@end
