//
//  NSString+DMMD5.h
//  ZTEducation
//
//  Created by LDZ on 2018/1/15.
//  Copyright © 2018年 LDZ. All rights reserved.
//  MD5加密

#import <Foundation/Foundation.h>

@interface NSString (DMMD5)
/**
简单说明:
MD5：全称是Message Digest Algorithm 5，译为“消息摘要算法第5版”
效果：对输入信息生成唯一的128位散列值（32个字符）
MD5生成的是固定的128bit，即128个0和1的二进制位，而在实际应用开发中，通常是以16进制输出的，所以正好就是32位的16进制，说白了也就是32个16进制的数字。

MD5的特点:
（1）输入两个不同的明文不会得到相同的输出值
（2）根据输出值，不能得到原始的明文，即其过程不可逆(只能加密, 不能解密)

MD5的应用:
由于MD5加密算法具有较好的安全性，而且免费，因此该加密算法被广泛使用
大多数的登录功能向后台提交密码时都会使用到这种算法

注意点:
（1）一定要和后台开发人员约定好，MD5加密的位数是16位还是32位(大多数都是32位的)，16位的可以通过32位的转换得到。
（2）MD5加密区分 大小写，使用时要和后台约定好。

MD5解密:
解密网站: http://www.cmd5.com/
*/

/*
 *由于MD5加密是不可逆的,多用来进行验证
 */
    
/**
 32位小写

 @param str str
 @return str
 */
+(NSString *)MD5ForLower32Bate:(NSString *)str;
/**
 32位大写
 
 @param str str
 @return str
 */   
+(NSString *)MD5ForUpper32Bate:(NSString *)str;
/**
 16位大写
 
 @param str str
 @return str
 */    
+(NSString *)MD5ForUpper16Bate:(NSString *)str;
/**
 16位小写
 
 @param str str
 @return str
 */  
+(NSString *)MD5ForLower16Bate:(NSString *)str;

@end

