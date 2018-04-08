//
//  NSString+DMDES.h
//  ZTEducation
//
//  Created by LDZ on 2018/1/15.
//  Copyright © 2018年 LDZ. All rights reserved.
//  DES加密

#import <Foundation/Foundation.h>

@interface NSString (DMDES)

/**
 DES加密

 @param plainText 加密的字符串
 @param key key
 @return 加密后的大写字符串
 */
+(NSString *) dmUseDESencrypt:(NSString *)plainText key:(NSString *)key;
/**
 DES解密
 
 @param cipherText 被解密密的字符串
 @param key key
 @return 解密后的字符串
 */
+(NSString *) dmUseDESdecrypt:(NSString *)cipherText key:(NSString *)key;
@end
