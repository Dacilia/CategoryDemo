//
//  PhotoImageController.m
//  CategoryDemo
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "PhotoImageController.h"
#import "UIImage+DmGif.h"
#import "UIImage+DmColor.h"
#import "UIImage+DmRotate.h"
#import "UIImage+DmSubImage.h"
#import "UIView+DmAnimation.h"
@interface PhotoImageController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic,strong) UIImage * image;

@end

@implementation PhotoImageController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.image=[UIImage imageNamed:@"i9"];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.imageView addGestureRecognizer:tap];
    self.imageView.userInteractionEnabled=YES;
    self.imageView.image = self.image;

}
//还原初始状态
- (IBAction)origin:(id)sender {
    self.imageView.image=[UIImage imageNamed:@"i9"];
}
- (void)handleTap:(UITapGestureRecognizer *)tap
{
    CGPoint point = [tap locationInView:tap.view];

    UIImage *image = self.imageView.image;

    CGPoint pointInImage = CGPointMake(point.x * image.size.width / self.imageView.frame.size.width, point.y * image.size.height / self.imageView.frame.size.height);

    self.view.backgroundColor = [image colorAtThePixelPoint:pointInImage];
}
//左翻转
- (IBAction)leftRotate:(id)sender {
    self.imageView.image=[self.imageView.image rotate:UIImageOrientationLeft];
}

//右翻转
- (IBAction)rightRotate:(id)sender {
    self.imageView.image=[self.imageView.image rotate:UIImageOrientationRight];
}

//垂直翻转
- (IBAction)vertiRotate:(id)sender {
     self.imageView.image=[self.imageView.image rotate:UIImageOrientationUpMirrored];
}
//截取图片
- (IBAction)cutImage:(id)sender {
    self.imageView.image=[self.image subImageWithRect:CGRectMake(0, 0, self.image.size.width, self.image.size.height/1.5)];
}
//截屏
- (IBAction)cutView:(id)sender {
    self.imageView.image=[UIImage imageFromView:self.view];
}
//gif
- (IBAction)gif:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"gif" ofType:@"gif"];
    self.imageView.image = [UIImage animatedImageWithAnimatedGIFURL:[NSURL fileURLWithPath:path]];
    self.imageView.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfFile:path]];

}
//平铺图片
- (IBAction)push:(id)sender {

}
//显示灰度图片
- (IBAction)convertToGray:(id)sender {
     self.imageView.image = [self.imageView.image convertToGrayImage];
}
//纯色图片
- (IBAction)plain:(id)sender {
    self.imageView.image=[UIImage dm_imageWithColor:[UIColor orangeColor]];
}
- (IBAction)circulationRotate:(id)sender {
    [self.imageView dm_addRotationAnimationTime:1.5 timeCount:MAX_CANON angle:M_PI*2.0];

}

@end
