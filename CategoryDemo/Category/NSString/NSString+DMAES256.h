//
//  NSString+DMAES256.h
//  ZTEducation
//
//  Created by LDZ on 2018/1/15.
//  Copyright © 2018年 LDZ. All rights reserved.
//  AES加密和解密

#import <Foundation/Foundation.h>

/**
 1.AES是一种对称加密算法，采用单钥密码系统的加密方法，同一个密钥可以同时用作信息的加密和解密，这种加密方法称为对称加密。优点是算法公开、计算量小、加密速度快、加密效率高。缺点是在数据传送前，发送方和接收方必须商定好秘钥，然后使双方都能保存好秘钥。其次如果一方的秘钥被泄露，那么加密信息也就不安全了。另外，每对用户每次使用对称加密算法时，都需要使用其他人不知道的唯一秘钥，这会使得收、发双方所拥有的钥匙数量巨大，密钥管理成为双方的负担。
 */
@interface NSString (DMAES256)

/**
 AES加密

 @param key 加密的key
 @param targetStr 目标字符串
 @return 结果字符串
 */
+(NSString*)dmAES256EncryptKey:(NSString*)key targetStr:(NSString*)targetStr;
/**
 AES解密
 
 @param key 解密密的key
 @param decryptStr 目标字符串 
 @return 结果字符串
 */
+(NSString*)dmAES256decryptKey:(NSString*)key decryptStr:(NSString*)decryptStr;

@end
