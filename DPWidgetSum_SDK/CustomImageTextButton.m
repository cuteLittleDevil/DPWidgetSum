//
//  UploadUserHeadImageRequest.h
//  ZhongCaiWebApp
//
//  Created by xiayupeng on 15/9/11.
//  Copyright (c) 2018年 zcw. All rights reserved.
//

#import "CustomImageTextButton.h"
@interface CustomImageTextButton(){
    
}
@end

@implementation CustomImageTextButton
///纯文字 Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor sideGap:(CGFloat)sideGap{
    return [self customButtonWithFrame:frame ImageTextType:textButtonType imageTextGap:0 imageName:@"" heightImageName:@"" selectedImageName:@"" text:text font:font textColor:textColor  heightTextColor:heightTextColor selectedTextColor:heightTextColor backGroundColor:backGroundColor backGroundHightColor:backGroundHightColor backGroundSelectedColor:backGroundHightColor sideGap:sideGap imageWidth:0 imageHeight:0];
}
///图片+文字 Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName heightImageName:(id)heightImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor sideGap:(CGFloat)sideGap{
    
    return [self customButtonWithFrame:frame ImageTextType:textButtonType imageTextGap:imageTextGap imageName:imageName heightImageName:heightImageName selectedImageName:heightImageName text:text font:font textColor:textColor  heightTextColor:heightTextColor selectedTextColor:heightTextColor backGroundColor:backGroundColor backGroundHightColor:backGroundHightColor backGroundSelectedColor:backGroundHightColor sideGap:sideGap imageWidth:0 imageHeight:0];
}
///图片+文字 限制图片大小 Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName heightImageName:(id)heightImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor sideGap:(CGFloat)sideGap imageWidth:(CGFloat)imageWidth imageHeight:(CGFloat)imageHeight{
    return [self customButtonWithFrame:frame ImageTextType:textButtonType imageTextGap:imageTextGap imageName:imageName heightImageName:heightImageName selectedImageName:heightImageName text:text font:font textColor:textColor  heightTextColor:heightTextColor selectedTextColor:heightTextColor backGroundColor:backGroundColor backGroundHightColor:backGroundHightColor backGroundSelectedColor:backGroundHightColor sideGap:sideGap imageWidth:imageWidth imageHeight:imageHeight];
}
///图片+文字 selected Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName selectedImageName:(id)selectedImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor selectedTextColor:(UIColor*)selectedTextColor backGroundColor:(UIColor*)backGroundColor backGroundSelectedColor:(UIColor*)backGroundSelectedColor sideGap:(CGFloat)sideGap{
    return [self customButtonWithFrame:frame ImageTextType:textButtonType imageTextGap:imageTextGap imageName:imageName selectedImageName:selectedImageName text:text font:font textColor:textColor selectedTextColor:selectedTextColor backGroundColor:backGroundColor backGroundSelectedColor:backGroundSelectedColor sideGap:sideGap imageWidth:0 imageHeight:0];
}
///图片+文字 限制图片大小 selected Button
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName selectedImageName:(id)selectedImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor selectedTextColor:(UIColor*)selectedTextColor backGroundColor:(UIColor*)backGroundColor backGroundSelectedColor:(UIColor*)backGroundSelectedColor sideGap:(CGFloat)sideGap imageWidth:(CGFloat)imageWidth imageHeight:(CGFloat)imageHeight{
    
    return [self customButtonWithFrame:frame ImageTextType:textButtonType imageTextGap:imageTextGap imageName:imageName heightImageName:selectedImageName selectedImageName:selectedImageName text:text font:font textColor:textColor  heightTextColor:selectedTextColor selectedTextColor:selectedTextColor backGroundColor:backGroundColor backGroundHightColor:backGroundSelectedColor backGroundSelectedColor:backGroundSelectedColor sideGap:sideGap imageWidth:imageWidth imageHeight:imageHeight];
}

///基础函数
+(id)customButtonWithFrame:(CGRect)frame ImageTextType:(CustomImageTextButtonType)textButtonType imageTextGap:(CGFloat)imageTextGap imageName:(id)imageName heightImageName:(id)heightImageName selectedImageName:(id)selectedImageName text:(NSString*)text font:(UIFont*)font textColor:(UIColor*)textColor heightTextColor:(UIColor*)heightTextColor selectedTextColor:(UIColor*)selectedTextColor backGroundColor:(UIColor*)backGroundColor backGroundHightColor:(UIColor*)backGroundHightColor backGroundSelectedColor:(UIColor*)backGroundSelectedColor sideGap:(CGFloat)sideGap imageWidth:(CGFloat)imageWidth imageHeight:(CGFloat)imageHeight{
    
    CustomImageTextButton* button = [super buttonWithType:UIButtonTypeCustom];
    if(button){
        [button setBackgroundColor:[UIColor clearColor]];
        [button setTitleColor:textColor forState:UIControlStateNormal];
        [button setTitleColor:heightTextColor forState:UIControlStateHighlighted];
        [button setTitleColor:selectedTextColor forState:UIControlStateSelected];
        
        button.imageTextButtonType = textButtonType;
        button.currentFrame = frame;
        button.imageTextGap = imageTextGap;
        button.sideGap = sideGap;
        button.deployText = text;
        button.deployFont = font;
        button.imageSize = CGSizeMake(imageWidth, imageHeight);
        
        button.imageName = imageName;
        button.heightImageName = heightImageName;
        button.selectedImageName = selectedImageName;
        
        button.backGroundColor = backGroundColor;
        button.backGroundHightColor = backGroundHightColor;
        button.backGroundSelectedColor = backGroundSelectedColor;
    }
    return button;
}

///获取 或 修改图片与文字的布局类型
- (void)setImageTextButtonType:(CustomImageTextButtonType)imageTextButtonType{
    _imageTextButtonType = imageTextButtonType;
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
///获取 或 修改按钮的frame: frame.size.width<=0 宽度自适应, frame.size.height<=0 高度自适应;
- (void)setCurrentFrame:(CGRect)currentFrame{
    _currentFrame = currentFrame;
    [self setFrame:_currentFrame];
}
///获取 或 修改图片与文字之间的间距
- (void)setImageTextGap:(CGFloat)imageTextGap{
    _imageTextGap = imageTextGap;
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
///按钮整体内容，左右边缘，某一边的边缘的宽度
- (void)setSideGap:(CGFloat)sideGap{
    _sideGap = sideGap;
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
///获取 或 修改Text
- (void)setDeployText:(NSString *)deployText{
    _deployText = deployText;
    [self setTitle:_deployText forState:(UIControlStateNormal)];
    [self setTitle:_deployText forState:(UIControlStateHighlighted)];
    [self setTitle:_deployText forState:(UIControlStateSelected)];
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
///获取 或 修改Font
- (void)setDeployFont:(UIFont *)deployFont{
    _deployFont = deployFont;
    self.titleLabel.font = _deployFont;
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
///获取 或 修改图片 size: 默认 CGSizeMake(0, 0), 图片原始尺寸
- (void)setImageSize:(CGSize)imageSize{
    _imageSize = imageSize;
    UIImage *imageNormal = [CustomImageTextButton makeImage:_imageName imageWidth:_imageSize.width imageHeight:_imageSize.width];
    UIImage *imageHighlighted = [CustomImageTextButton makeImage:_heightImageName imageWidth:_imageSize.width imageHeight:_imageSize.height];
    UIImage *imageSelected = [CustomImageTextButton makeImage:_selectedImageName imageWidth:_imageSize.width imageHeight:_imageSize.height];
    if (imageNormal) {
        [self setImage:imageNormal forState:UIControlStateNormal];
    }
    if (imageHighlighted) {
        [self setImage:imageHighlighted forState:UIControlStateHighlighted];
    }
    if (imageSelected) {
        [self setImage:imageSelected forState:UIControlStateSelected];
    }
}
///获取 或 修改按钮的图片
- (void)setImageName:(id)imageName{
    _imageName = imageName;
    [self setImageSize:_imageSize];
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
- (void)setHeightImageName:(id)heightImageName{
    _heightImageName = heightImageName;
    [self setImageSize:_imageSize];
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
- (void)setSelectedImageName:(id)selectedImageName{
    _selectedImageName = selectedImageName;
    [self setImageSize:_imageSize];
    [self titleRectForContentRect:self.bounds];
    [self imageRectForContentRect:self.bounds];
}
///获取 或 修改按钮的背景颜色
- (void)setBackGroundColor:(id)backGroundColor{
    _backGroundColor = backGroundColor;
    [CustomImageTextButton customButtonBackgroundColor:_backGroundColor forState:UIControlStateNormal button:self];
}
- (void)setBackGroundHightColor:(id)backGroundHightColor{
    _backGroundHightColor = backGroundHightColor;
    [CustomImageTextButton customButtonBackgroundColor:_backGroundHightColor forState:UIControlStateHighlighted button:self];
}
- (void)setBackGroundSelectedColor:(id)backGroundSelectedColor{
    _backGroundSelectedColor = backGroundSelectedColor;
    [CustomImageTextButton customButtonBackgroundColor:_backGroundSelectedColor forState:UIControlStateSelected button:self];
}

//重定义 titleLabel 显示区域
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat width_Self = _currentFrame.size.width<=0?1000:contentRect.size.width;
    CGFloat height_Self = _currentFrame.size.height<=0?1000:contentRect.size.height;
    
    UIImage *image = [self imageForState:UIControlStateNormal];
    CGFloat width_Image = image.size.width;
    CGFloat height_Image = image.size.height;
    
    CGFloat hight_Font = _deployFont.lineHeight;
    
    CGSize sizeText = [CustomImageTextButton sizeWithFont:_deployFont adjustSize:CGSizeMake(width_Self-width_Image-_imageTextGap, hight_Font) alignment:NSTextAlignmentLeft str:_deployText];
    
    CGFloat width_Text = sizeText.width;
    CGFloat height_Text = sizeText.height;
    
    //不设置固定宽度，使用自适应宽度 frame.width
    if (_currentFrame.size.width<=0) {
        if (_imageTextButtonType == CustomImageTextButtonType_Center_IconLeft_TextRight     ||
            _imageTextButtonType == CustomImageTextButtonType_Center_IconRight_TextLeft     ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconLeft_TextRight       ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconRight_TextLeft       ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconLeft_TextRight      ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconRight_TextLeft) {
            
            width_Self = width_Image+width_Text+_imageTextGap;
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width_Self, self.frame.size.height);
            [self setFrame:aFrame];
            
        }else if (_imageTextButtonType == CustomImageTextButtonType_Center_IconTop_TextBottom ||
                  _imageTextButtonType == CustomImageTextButtonType_Center_IconBottom_TextTop) {
            
            width_Self = MAX(width_Image,sizeText.width);
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width_Self, self.frame.size.height);
            [self setFrame:aFrame];
            
        }
        _sideGap = 0;
    }
    
    //不设置固定宽度，使用自适应宽度 frame.height
    if (_currentFrame.size.height<=0) {
        if (_imageTextButtonType == CustomImageTextButtonType_Center_IconLeft_TextRight     ||
            _imageTextButtonType == CustomImageTextButtonType_Center_IconRight_TextLeft     ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconLeft_TextRight       ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconRight_TextLeft       ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconLeft_TextRight      ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconRight_TextLeft) {
            
            height_Self = MAX(height_Image,sizeText.height);
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height_Self);
            [self setFrame:aFrame];
            
        }else if (_imageTextButtonType == CustomImageTextButtonType_Center_IconTop_TextBottom ||
                  _imageTextButtonType == CustomImageTextButtonType_Center_IconBottom_TextTop) {
            
            height_Self = height_Image+height_Text+_imageTextGap;
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height_Self);
            [self setFrame:aFrame];
            
        }
        _sideGap = 0;
    }
    
    CGFloat frameX = 0;
    CGFloat frameY = 0;
    CGRect returnFrame = CGRectZero;
    switch (_imageTextButtonType) {
        case CustomImageTextButtonType_Center_IconLeft_TextRight:{
            frameX = (width_Self-width_Text-_imageTextGap-width_Image)/2+width_Image+_imageTextGap;
            frameY = (height_Self-height_Text)/2;
        }
            break;
        case CustomImageTextButtonType_Center_IconRight_TextLeft:{
            frameX = (width_Self-width_Text-_imageTextGap-width_Image)/2;
            frameY = (height_Self-height_Text)/2;
        }
            break;
        case CustomImageTextButtonType_Left_IconRight_TextLeft:{
            frameX = _sideGap;
            frameY = (height_Self-height_Text)/2;
        }
            break;
        case CustomImageTextButtonType_Left_IconLeft_TextRight:{
            frameX = _sideGap+width_Image+_imageTextGap;
            frameY = (height_Self-height_Text)/2;
        }
            break;
        case CustomImageTextButtonType_Right_IconRight_TextLeft:{
            frameX = width_Self-_sideGap-width_Text-width_Image-_imageTextGap;
            frameY = (height_Self-height_Text)/2;
        }
            break;
        case CustomImageTextButtonType_Right_IconLeft_TextRight:{
            frameX = width_Self-_sideGap-width_Text;
            frameY = (height_Self-height_Text)/2;
        }
            break;
        case CustomImageTextButtonType_Center_IconTop_TextBottom:{
            frameX = (width_Self-width_Text)/2;
            frameY = (height_Self-height_Image-_imageTextGap-height_Text)/2+height_Image+_imageTextGap;
        }
            break;
        case CustomImageTextButtonType_Center_IconBottom_TextTop:{
            frameX = (width_Self-width_Text)/2;
            frameY = (height_Self-height_Image-_imageTextGap-height_Text)/2;
        }
            break;
        default: break;
    }
    returnFrame.origin = CGPointMake(frameX, frameY);
    returnFrame.size = sizeText;
    return returnFrame;
}

//重定义 imagView 显示区域
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat width_Self = _currentFrame.size.width<=0?1000:contentRect.size.width;
    CGFloat height_Self = _currentFrame.size.height<=0?1000:contentRect.size.height;
    
    UIImage *image = [self imageForState:UIControlStateNormal];
    CGFloat width_Image = image.size.width;
    CGFloat height_Image = image.size.height;
    
    CGFloat hight_Font = _deployFont.lineHeight;
    
    CGSize sizeText = [CustomImageTextButton sizeWithFont:_deployFont adjustSize:CGSizeMake(width_Self-width_Image-_imageTextGap, hight_Font) alignment:NSTextAlignmentLeft str:_deployText];
    
    CGFloat width_Text = sizeText.width;
    CGFloat height_Text = sizeText.height;
    
    //不设置固定宽度，使用自适应宽度 frame.width
    if (_currentFrame.size.width<=0) {
        if (_imageTextButtonType == CustomImageTextButtonType_Center_IconLeft_TextRight     ||
            _imageTextButtonType == CustomImageTextButtonType_Center_IconRight_TextLeft     ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconLeft_TextRight       ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconRight_TextLeft       ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconLeft_TextRight      ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconRight_TextLeft) {
            
            width_Self = width_Image+width_Text+_imageTextGap;
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width_Self, self.frame.size.height);
            [self setFrame:aFrame];
            
        }else if (_imageTextButtonType == CustomImageTextButtonType_Center_IconTop_TextBottom ||
                  _imageTextButtonType == CustomImageTextButtonType_Center_IconBottom_TextTop) {
            
            width_Self = MAX(width_Image,sizeText.width);
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width_Self, self.frame.size.height);
            [self setFrame:aFrame];
            
        }
        _sideGap = 0;
    }
    
    //不设置固定宽度，使用自适应宽度 frame.height
    if (_currentFrame.size.height<=0) {
        if (_imageTextButtonType == CustomImageTextButtonType_Center_IconLeft_TextRight     ||
            _imageTextButtonType == CustomImageTextButtonType_Center_IconRight_TextLeft     ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconLeft_TextRight       ||
            _imageTextButtonType == CustomImageTextButtonType_Left_IconRight_TextLeft       ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconLeft_TextRight      ||
            _imageTextButtonType == CustomImageTextButtonType_Right_IconRight_TextLeft) {
            
            height_Self = MAX(height_Image,sizeText.height);
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height_Self);
            [self setFrame:aFrame];
            
        }else if (_imageTextButtonType == CustomImageTextButtonType_Center_IconTop_TextBottom ||
                  _imageTextButtonType == CustomImageTextButtonType_Center_IconBottom_TextTop) {
            
            height_Self = height_Image+height_Text+_imageTextGap;
            CGRect aFrame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height_Self);
            [self setFrame:aFrame];
            
        }
        _sideGap = 0;
    }
    
    CGFloat frameX = 0;
    CGFloat frameY = 0;
    CGRect returnFrame = CGRectZero;
    switch (_imageTextButtonType) {
        case CustomImageTextButtonType_Center_IconLeft_TextRight:{
            frameX = (width_Self-width_Text-_imageTextGap-width_Image)/2;
            frameY = (height_Self-height_Image)/2;
        }
            break;
        case CustomImageTextButtonType_Center_IconRight_TextLeft:{
            frameX = (width_Self-width_Text-_imageTextGap-width_Image)/2+width_Text+_imageTextGap;
            frameY = (height_Self-height_Image)/2;
        }
            break;
        case CustomImageTextButtonType_Left_IconRight_TextLeft:{
            frameX = _sideGap+width_Text+_imageTextGap;
            frameY = (height_Self-height_Image)/2;
        }
            break;
        case CustomImageTextButtonType_Left_IconLeft_TextRight:{
            frameX = _sideGap;
            frameY = (height_Self-height_Image)/2;
        }
            break;
        case CustomImageTextButtonType_Right_IconRight_TextLeft:{
            frameX = width_Self-_sideGap-width_Image;
            frameY = (height_Self-height_Image)/2;
        }
            break;
        case CustomImageTextButtonType_Right_IconLeft_TextRight:{
            frameX = width_Self-_sideGap-width_Text-_imageTextGap-width_Image;
            frameY = (height_Self-height_Image)/2;
        }
            break;
        case CustomImageTextButtonType_Center_IconTop_TextBottom:{
            frameX = (width_Self-width_Image)/2;
            frameY = (height_Self-height_Image-_imageTextGap-height_Text)/2;
        }
            break;
        case CustomImageTextButtonType_Center_IconBottom_TextTop:{
            frameX = (width_Self-width_Image)/2;
            frameY = (height_Self-height_Image-_imageTextGap-height_Text)/2+height_Text+_imageTextGap;
        }
            break;
        default: break;
    }
    returnFrame.origin = CGPointMake(frameX, frameY);
    returnFrame.size = CGSizeMake(image.size.width, image.size.height);
    return returnFrame;
}

///限制图片大小
+ (UIImage *)makeImage:(id)imageName imageWidth:(CGFloat)imageWidth imageHeight:(CGFloat)imageHeight{
    UIImage * aImage = nil;
    if (imageName) {
        if ([imageName isKindOfClass:[UIImage class]]) {
            aImage = imageName;
        }else if ([imageName isKindOfClass:[NSString class]]) {
            aImage = [UIImage imageNamed:imageName];
        }
        if (aImage) {
            if (imageWidth>0 && imageHeight>0) {
                CGSize size = CGSizeMake(imageWidth, imageHeight);
                // 创建一个bitmap的context
                // 并把它设置成为当前正在使用的context
                //Determine whether the screen is retina
                if([[UIScreen mainScreen] scale] == 2.0){
                    UIGraphicsBeginImageContextWithOptions(size, NO, 2.0);
                }else{
                    UIGraphicsBeginImageContext(size);
                }
                // 绘制改变大小的图片
                [aImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
                // 从当前context中创建一个改变大小后的图片
                aImage = UIGraphicsGetImageFromCurrentImageContext();
                // 使当前的context出堆栈
                UIGraphicsEndImageContext();
            }
        }
    }
    return aImage;
}
///获取 或 修改按钮点击状态背景颜色
+ (void)customButtonBackgroundColor:(UIColor *)color forState:(UIControlState)state button:(UIButton *)aButton{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *backgroundColorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [aButton setBackgroundImage:backgroundColorImage forState:state];
}
///计算字符串size
+ (CGSize)sizeWithFont:(UIFont*)font adjustSize:(CGSize)boundingSize alignment:(NSTextAlignment)alignment str:(NSString *)str{
    CGSize textSize = CGSizeZero;
    if([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]){
        //ios7
        NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
        paragraphStyle.alignment = alignment;
        
        NSDictionary * attributes = @{NSFontAttributeName:font,
                                      NSParagraphStyleAttributeName:paragraphStyle};
        
        NSStringDrawingContext * content = [[NSStringDrawingContext alloc] init];
        content.minimumScaleFactor = 0.5;
        textSize = [str boundingRectWithSize:boundingSize
                                     options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:content].size;
    }else{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"//方法弃用告警
        textSize = [str sizeWithFont:font constrainedToSize:boundingSize lineBreakMode:NSLineBreakByWordWrapping];
#pragma clang diagnostic pop
    }
    return textSize;
}
@end
