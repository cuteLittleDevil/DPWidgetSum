//
//  ViewController.m
//  ertert
//
//  Created by yupeng xia on 2018/10/16.
//  Copyright © 2018年 yupeng xia. All rights reserved.
//

#import "ViewController.h"
#import "CustomImageTextButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 纯文字 限制
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(5, 20, 150, 30)];
    lab.text = @"限制宽度、自适应宽度";
    lab.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:lab];
    
    CustomImageTextButton *promptButton = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35, 60, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:0 imageName:nil heightImageName:nil text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton];
    
    CustomImageTextButton *promptButton1 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*2, 60, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:0 imageName:nil heightImageName:nil text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton1];
    
    CustomImageTextButton *promptButton2 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*3, 60, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:0 imageName:nil heightImageName:nil text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton2];
    
    // 纯文字 自适应宽度
    CustomImageTextButton *promptButtonc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65, 20+35, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:0 imageName:nil heightImageName:nil text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButtonc];
    
    CustomImageTextButton *promptButton1c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65, 20+35*2, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:0 imageName:nil heightImageName:nil text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton1c];
    
    CustomImageTextButton *promptButton2c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65, 20+35*3, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:0 imageName:nil heightImageName:nil text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton2c];

    // 纯图片
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(5+160, 20, 150, 30)];
    lab1.text = @"限制宽度、自适应宽度";
    lab1.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:lab1];
    
    CustomImageTextButton *promptButtont = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65*2, 20+35, 60, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:0 imageName:@"99.png" heightImageName:@"99.png" text:@"" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButtont];
    
    CustomImageTextButton *promptButton1t = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65*2, 20+35*2, 60, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:0 imageName:@"99.png" heightImageName:@"99.png" text:@"" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton1t];
    
    CustomImageTextButton *promptButton2t = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65*2, 20+35*3, 60, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:0 imageName:@"99.png" heightImageName:@"99.png" text:@"" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton2t];
    
    // 纯图片 自适应宽度
    CustomImageTextButton *promptButtontc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65*3, 20+35, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:0 imageName:@"99.png" heightImageName:@"99.png" text:@"" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButtontc];
    
    CustomImageTextButton *promptButton1tc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65*3, 20+35*2, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:0 imageName:@"99.png" heightImageName:@"99.png" text:@"" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton1tc];
    
    CustomImageTextButton *promptButton2tc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+65*3, 20+35*3, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:0 imageName:@"99.png" heightImageName:@"99.png" text:@"" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor redColor] backGroundHightColor:[UIColor redColor] sideGap:0];
    [self.view addSubview:promptButton2tc];
    
    ///图片+文字
    UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(5, 20+35*4, 150, 30)];
    lab2.text = @"限制宽度、自适应宽度";
    lab2.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:lab2];
    
    CustomImageTextButton *promptButton3 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*5, 0, 0) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton3];
    
    CustomImageTextButton *promptButton4 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*6, 80, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton4];
    
    CustomImageTextButton *promptButton5 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*7, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton5];
    
    CustomImageTextButton *promptButton6 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*8, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton6];
    
    CustomImageTextButton *promptButton7 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*9, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton7];
    
    CustomImageTextButton *promptButton8 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*10, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton8];
    
    ///图片+文字 自适应宽度
    CustomImageTextButton *promptButton3c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*5, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton3c];
    
    CustomImageTextButton *promptButton4c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*6, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton4c];
    
    CustomImageTextButton *promptButton5c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*7, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton5c];
    
    CustomImageTextButton *promptButton6c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*8, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton6c];
    
    CustomImageTextButton *promptButton7c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*9, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton7c];
    
    CustomImageTextButton *promptButton8c = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*10, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor orangeColor] backGroundHightColor:[UIColor orangeColor] sideGap:5];
    [self.view addSubview:promptButton8c];
    
    ///图片+文字 限制图片大小
    UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(5+160, 20+35*4, 250, 30)];
    lab3.text = @"限制宽度、自适应宽度、限制图片大小、selected";
    lab3.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:lab3];
    
    CustomImageTextButton *promptButton3cz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*5, 0, 0) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton3cz];
    
    CustomImageTextButton *promptButton4cz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*6, 80, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton4cz];
    
    CustomImageTextButton *promptButton5cz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*7, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton5cz];
    
    CustomImageTextButton *promptButton6cz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*8, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton6cz];
    
    CustomImageTextButton *promptButton7cz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*9, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton7cz];
    
    CustomImageTextButton *promptButton8cz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*10, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton8cz];
    
    ///图片+文字 限制图片大小 自适应宽度
    CustomImageTextButton *promptButton3czc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*5, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton3czc];
    
    CustomImageTextButton *promptButton4czc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*6, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton4czc];
    
    CustomImageTextButton *promptButton5czc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*7, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton5czc];
    
    CustomImageTextButton *promptButton6czc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*8, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton6czc];
    
    CustomImageTextButton *promptButton7czc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*9, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton7czc];
    
    CustomImageTextButton *promptButton8czc = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*10, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" heightImageName:@"99.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] heightTextColor:[UIColor blackColor] backGroundColor:[UIColor brownColor] backGroundHightColor:[UIColor brownColor] sideGap:5 imageWidth:30 imageHeight:30];
    [self.view addSubview:promptButton8czc];

    ///图片+文字 selected
    CustomImageTextButton *promptButton3l = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*12, 80, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton3l addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3l];
    
    CustomImageTextButton *promptButton4l = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*13, 80, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton4l addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton4l];
    
    CustomImageTextButton *promptButton5l = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*14, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton5l addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton5l];
    
    CustomImageTextButton *promptButton6l = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*15, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton6l addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton6l];
    
    CustomImageTextButton *promptButton7l = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*16, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton7l addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton7l];
    
    CustomImageTextButton *promptButton8l = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 20+35*17, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton8l addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton8l];
    
    ///图片+文字 selected 自适应宽度
    UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(5, 20+35*11, 150, 30)];
    lab4.text = @"限制宽度、自适应宽度";
    lab4.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:lab4];
    
    CustomImageTextButton *promptButton3lz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*12, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton3lz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3lz];

    CustomImageTextButton *promptButton4lz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*13, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton4lz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton4lz];

    CustomImageTextButton *promptButton5lz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*14, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton5lz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton5lz];

    CustomImageTextButton *promptButton6lz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*15, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton6lz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton6lz];

    CustomImageTextButton *promptButton7lz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*16, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton7lz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton7lz];

    CustomImageTextButton *promptButton8lz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 20+35*17, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor purpleColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5];
    [promptButton8lz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton8lz];
    
    ///图片+文字 限制图片大小 selected
    UILabel *lab5 = [[UILabel alloc] initWithFrame:CGRectMake(5+160, 20+35*11, 250, 30)];
    lab5.text = @"限制宽度、自适应宽度、限制图片大、selected";
    lab5.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:lab5];
    
    CustomImageTextButton *promptButton3lcv = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*12, 80, 30) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton3lcv addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3lcv];
    
    CustomImageTextButton *promptButton4lcv = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*13, 80, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton4lcv addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton4lcv];
    
    CustomImageTextButton *promptButton5lcv = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*14, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton5lcv addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton5lcv];
    
    CustomImageTextButton *promptButton6lcv = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*15, 80, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton6lcv addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton6lcv];
    
    CustomImageTextButton *promptButton7lcv = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*16, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton7lcv addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton7lcv];
    
    CustomImageTextButton *promptButton8lcv = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 20+35*17, 80, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton8lcv addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton8lcv];
    
    ///图片+文字 限制图片大小 selected 自适应宽度
    CustomImageTextButton *promptButton3lcvz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*12, 0, 0) ImageTextType:CustomImageTextButtonType_Center_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton3lcvz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3lcvz];
    
    CustomImageTextButton *promptButton4lcvz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*13, 0, 30) ImageTextType:CustomImageTextButtonType_Center_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton4lcvz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton4lcvz];
    
    CustomImageTextButton *promptButton5lcvz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*14, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton5lcvz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton5lcvz];
    
    CustomImageTextButton *promptButton6lcvz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*15, 0, 30) ImageTextType:CustomImageTextButtonType_Left_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton6lcvz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton6lcvz];
    
    CustomImageTextButton *promptButton7lcvz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*16, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconLeft_TextRight imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton7lcvz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton7lcvz];
    
    CustomImageTextButton *promptButton8lcvz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 20+35*17, 0, 30) ImageTextType:CustomImageTextButtonType_Right_IconRight_TextLeft imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor] selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor blueColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:30 imageHeight:30];
    [promptButton8lcvz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton8lcvz];
    
    ///图片+文字 上下结构 限制图片大小 selected 自适应宽度
    CustomImageTextButton *promptButton3lcvzzz1 = [CustomImageTextButton customButtonWithFrame:CGRectMake(5, 25+35*18, 80, 70) ImageTextType:CustomImageTextButtonType_Center_IconTop_TextBottom imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor magentaColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:10 imageHeight:10];
    [promptButton3lcvzzz1 addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3lcvzzz1];
    
    CustomImageTextButton *promptButton3lcvzzz = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85, 25+35*18, 80, 70) ImageTextType:CustomImageTextButtonType_Center_IconBottom_TextTop imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor magentaColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:10 imageHeight:10];
    [promptButton3lcvzzz addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3lcvzzz];
    
    CustomImageTextButton *promptButton3lcvzzz1a = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*2, 25+35*18, 0, 70) ImageTextType:CustomImageTextButtonType_Center_IconTop_TextBottom imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor magentaColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:10 imageHeight:10];
    [promptButton3lcvzzz1a addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3lcvzzz1a];
    
    CustomImageTextButton *promptButton3lcvzzza = [CustomImageTextButton customButtonWithFrame:CGRectMake(5+85*3, 25+35*18, 0, 0) ImageTextType:CustomImageTextButtonType_Center_IconBottom_TextTop imageTextGap:5 imageName:@"99.png" selectedImageName:@"911.png" text:@"文字" font:[UIFont systemFontOfSize:13] textColor:[UIColor blackColor]  selectedTextColor:[UIColor orangeColor] backGroundColor:[UIColor magentaColor] backGroundSelectedColor:[UIColor blackColor] sideGap:5 imageWidth:10 imageHeight:10];
    [promptButton3lcvzzza addTarget:self action:@selector(promptButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:promptButton3lcvzzza];
}
- (void)promptButtonAction:(CustomImageTextButton *)button{
    button.selected = !button.selected;
    
    button.currentFrame = CGRectMake(button.frame.origin.x+55, button.frame.origin.y-55, 0, 0);
    button.imageTextButtonType = CustomImageTextButtonType_Center_IconBottom_TextTop;
    [self.view bringSubviewToFront:button];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
