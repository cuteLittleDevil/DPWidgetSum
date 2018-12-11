//
//  UploadUserHeadImageRequest.h
//  ZhongCaiWebApp
//
//  Created by xiayupeng on 15/9/11.
//  Copyright (c) 2018年 zcw. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,CustomImageTextButtonType){
    //文字+图片(或者只有一个) 左右结构
    ///整体垂直居中,水平居中: 左Icon右Text
    CustomImageTextButtonType_Center_IconLeft_TextRight = 0x1,
    ///整体垂直居中,水平居中: 左Text右Icon
    CustomImageTextButtonType_Center_IconRight_TextLeft,
    
    ///整体垂直居中,水平居左: 左Icon右text
    CustomImageTextButtonType_Left_IconLeft_TextRight,
    ///整体垂直居中,水平居左: 左Text右Icon
    CustomImageTextButtonType_Left_IconRight_TextLeft,
    
    ///整体垂直居中,水平居右: 左Icon右text
    CustomImageTextButtonType_Right_IconLeft_TextRight,
    ///整体垂直居中,水平居右: 左Text右Icon
    CustomImageTextButtonType_Right_IconRight_TextLeft,
    
    //文字+图片(或者只有一个) 上下结构
    ///整体垂直居中,水平居中: 上Icon下Text
    CustomImageTextButtonType_Center_IconTop_TextBottom,
    ///整体垂直居中,水平居中: 上Text下Icon
    CustomImageTextButtonType_Center_IconBottom_TextTop
};


@interface CustomImageTextButton : UIButton
///获取 或 修改图片与文字的布局类型
@property(nonatomic,assign) CustomImageTextButtonType imageTextButtonType;
///获取 或 修改按钮的frame: frame.size.width<=0 宽度自适应, frame.size.height<=0 高度自适应;
@property(nonatomic,assign) CGRect currentFrame;
///获取 或 修改图片与文字之间的间距
@property(nonatomic,assign) CGFloat imageTextGap;
///按钮整体内容，左右边缘，某一边的边缘的宽度
@property(nonatomic,assign) CGFloat sideGap;
///获取 或 修改Text
@property(nonatomic,strong) NSString *deployText;
///获取 或 修改Font
@property(nonatomic,strong) UIFont *deployFont;
///获取 或 修改图片 size: 默认 CGSizeMake(0, 0), 图片原始尺寸
@property(nonatomic,assign) CGSize imageSize;
///获取 或 修改按钮的图片
@property(nonatomic,strong) id imageName;
@property(nonatomic,strong) id heightImageName;
@property(nonatomic,strong) id selectedImageName;
///获取 或 修改按钮的背景颜色
@property(nonatomic,strong) UIColor *backGroundColor;
@property(nonatomic,strong) UIColor *backGroundHightColor;
@property(nonatomic,strong) UIColor *backGroundSelectedColor;

///纯文字 Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor sideGap:(CGFloat)sideGap;
///图片+文字 Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName heightImageName:(id)heightImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor sideGap:(CGFloat)sideGap;
///图片+文字 限制图片大小 Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName heightImageName:(id)heightImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor sideGap:(CGFloat)sideGap imageWidth:(CGFloat)imageWidth imageHeight:(CGFloat)imageHeight;
///图片+文字 selected Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName selectedImageName:(id)selectedImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor selectedTextColor:(UIColor*)selectedTextColor backGroundColor:(UIColor*)backGroundColor backGroundSelectedColor:(UIColor*)backGroundSelectedColor sideGap:(CGFloat)sideGap;
///图片+文字 限制图片大小 selected Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName selectedImageName:(id)selectedImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor selectedTextColor:(UIColor*)selectedTextColor backGroundColor:(UIColor*)backGroundColor backGroundSelectedColor:(UIColor*)backGroundSelectedColor sideGap:(CGFloat)sideGap imageWidth:(CGFloat)imageWidth imageHeight:(CGFloat)imageHeight;

///基础函数
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName heightImageName:(id)heightImageName selectedImageName:(id)selectedImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor selectedTextColor:(UIColor*)selectedTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor backGroundSelectedColor:(UIColor*)backGroundSelectedColor sideGap:(CGFloat)sideGap imageWidth:(CGFloat)imageWidth imageHeight:(CGFloat)imageHeight;
@end
