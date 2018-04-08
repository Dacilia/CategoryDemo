//
//  NSString+DMBase64.m
//  ZTEducation
//
//  Created by LDZ on 2018/1/15.
//  Copyright © 2018年 LDZ. All rights reserved.


#import "NSString+DMBase64.h"

@implementation NSString (DMBase64)
+(NSData*)dmBsee64EncodedDataWithFile:(NSString*)fileStr{
    //字符串转data
    [@"" dataUsingEncoding:NSUTF8StringEncoding];
    //data 转字符串
//    [[NSString alloc]initWithData:[@"" dataUsingEncoding:NSUTF8StringEncoding] encoding:NSUTF8StringEncoding];
    
    //得到二进制data数据
    NSData *data = [NSData dataWithContentsOfFile:fileStr];
    
    // 或 base64EncodedStringWithOptions
    //将data转化为base64Data
    NSData *base64Data = [data base64EncodedDataWithOptions:0];
    return base64Data;
    
}
+(NSData*)dmDecodeWith:(NSData*)base64data{
    NSData*data=[[NSData alloc]initWithBase64EncodedData:base64data options:0];
    return data;
}
@end
