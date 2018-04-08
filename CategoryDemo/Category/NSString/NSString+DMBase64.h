//
//  NSString+DMBase64.h
//  ZTEducation
//
//  Created by LDZ on 2018/1/15.
//  Copyright © 2018年 LDZ. All rights reserved.
//   base64的加密与解密

#import <Foundation/Foundation.h>

/**
 base64 编码是现代密码学的基础
 基本原理：
 原本是 8个bit 一组表示数据,改为 6个bit一组表示数据,不足的部分补零,每 两个0 用 一个 = 表示
 用base64 编码之后,数据长度会变大,增加了大约 1/3 左右.(8-6)/6
 可进行反向解密
 Xcode7.0 之后出现的
 编码有个非常显著的特点,末尾有个 = 号
 
 作者：si1ence
 链接：https://www.jianshu.com/p/422e97e60f2d
 來源：简书
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
@interface NSString (DMBase64)

/**
 将文件内容装换未nsdata 的Bsee64编码

 @param fileStr 文件的路径
 @return data
 */
+(NSData*)dmBsee64EncodedDataWithFile:(NSString*)fileStr;

/**
 讲base64编码的data数据转化为data

 @param base64data base64data
 @return data
 */
+(NSData*)dmDecodeWith:(NSData*)base64data;

@end
