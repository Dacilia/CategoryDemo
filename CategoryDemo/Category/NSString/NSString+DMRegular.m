//
//  NSString+DMRegular.m
//  ZTEducation
//
//  Created by 李达志 on 2018/3/12.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "NSString+DMRegular.h"

@implementation NSString (DMRegular)
+(BOOL)dmStringIsPureNumberOriginString:(NSString *)orignString{
    NSString *numberRegex = @"^[0-9]*$";
    NSPredicate *numberPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", numberRegex];
    return [numberPredicate evaluateWithObject:orignString];
}
+(BOOL)dmAccordwithRegularString:(NSString *)regularString originString:(NSString *)orignString{
    NSPredicate *numberPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regularString];
    return [numberPredicate evaluateWithObject:orignString];
}
@end
