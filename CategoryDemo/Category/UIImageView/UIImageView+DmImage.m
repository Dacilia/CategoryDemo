//
//  UIImageView+DmImage.m
//  Category
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "UIImageView+DmImage.h"
#import <UIImageView+WebCache.h>
#import "UIImage+DmSubImage.h"
@implementation UIImageView (DmImage)
- (void)dm_setImageWithUrlString:(NSString *)urlString {
    [self dm_setImageWithUrlString:urlString placeholder:nil];
}

- (void)dm_setImageWithUrlString:(NSString *)urlString placeholder:(NSString *)placeholder {

    [self sd_setImageWithURL:[NSURL URLWithString:urlString]
            placeholderImage:(placeholder ? [UIImage dm_imageWithName:placeholder isScale:NO scale:0] : nil)];
}
+(instancetype)dm_imageVIewContenModel:(UIViewContentMode)contenModel imageStr:(NSString *)imageStr{
    UIImageView*imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:imageStr]];
    if (contenModel) {
        imageView.contentMode=contenModel;
    }else{
        imageView.contentMode=UIViewContentModeScaleAspectFill;
    }

    imageView.layer.masksToBounds=YES;
    return imageView;
}
@end
