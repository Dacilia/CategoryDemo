//
//  NSString+DMAES256.m
//  ZTEducation
//
//  Created by LDZ on 2018/1/15.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "NSString+DMAES256.h"
#import <CommonCrypto/CommonCryptor.h>
@implementation NSString (DMAES256)
+(NSString*)dmAES256EncryptKey:(NSString*)key targetStr:(NSString*)targetStr{
    //将nsstring转化为nsdata
    NSData *data = [targetStr dataUsingEncoding:NSUTF8StringEncoding];
    NSData * decryData=[self AES256EncryptWithKey:key nsdata:data ];
        //转换为2进制字符串
    if (decryData && decryData.length > 0) {
        
        Byte *datas = (Byte*)[decryData bytes];
        NSMutableString *output = [NSMutableString stringWithCapacity:decryData.length * 2];
        for(int i = 0; i < decryData.length; i++){
            [output appendFormat:@"%02x", datas[i]];
        }
        return output;
    }
    return nil;
    
    return nil;
}
+ (NSData *)AES256EncryptWithKey:(NSString *)key nsdata:(NSData*)data{//加密
    char keyPtr[kCCKeySizeAES256+1];
    bzero(keyPtr, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [data length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesEncrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt, kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          keyPtr, kCCBlockSizeAES128,
                                          NULL,
                                          [data bytes], dataLength,
                                          buffer, bufferSize,
                                          &numBytesEncrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:buffer length:numBytesEncrypted];
    }
    free(buffer);
    return nil;
}
+(NSString *)dmAES256decryptKey:(NSString *)key decryptStr:(NSString *)decryptStr{
        //转换为2进制Data
    NSMutableData *data = [NSMutableData dataWithCapacity:decryptStr.length / 2];
    unsigned char whole_byte;
    char byte_chars[3] = {'\0','\0','\0'};
    int i;
    for (i=0; i < [decryptStr length] / 2; i++) {
        byte_chars[0] = [decryptStr characterAtIndex:i*2];
        byte_chars[1] = [decryptStr characterAtIndex:i*2+1];
        whole_byte = strtol(byte_chars, NULL, 16);
        [data appendBytes:&whole_byte length:1];
    }
    
        //对数据进行解密
    NSData* result = [self  AES256ParmDecryptWithKey:key Decrypttext:data];
    if (result && result.length > 0) {
        return [[NSString alloc] initWithData:result encoding:NSUTF8StringEncoding];
    }
    return nil;
}
+ (NSData *)AES256ParmDecryptWithKey:(NSString *)key Decrypttext:(NSData *)text  //解密
{
    char keyPtr[kCCKeySizeAES256+1];
    bzero(keyPtr, sizeof(keyPtr));
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [text length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *buffer = malloc(bufferSize);
    size_t numBytesDecrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt, kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          keyPtr, kCCBlockSizeAES128,
                                          NULL,
                                          [text bytes], dataLength,
                                          buffer, bufferSize,
                                          &numBytesDecrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:buffer length:numBytesDecrypted];
    }
    free(buffer);
    return nil;
}
@end
