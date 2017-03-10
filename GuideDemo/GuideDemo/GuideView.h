//
//  GuideView.h
//  ALADDIN
//
//  Created by xiao on 2017/1/13.
//  Copyright © 2017年 xiao. All rights reserved.
//  指引层

/*
 
   使用方法 

   1.初始化数据模型 传入图片及坐标
   2.展示层级是用二维数组，需要展示几层就会有多个数组 ，每一个数组装数据模型，作为一层所展示的指引
 
 
 GuideModel *guidModel1 = [[GuideModel alloc]init];
 UIImage *image1 = [UIImage imageNamed:@"guid_userMessage"];
 guidModel1.imageName = @"guid_userMessage";
 guidModel1.rect = CGRectMake(10, 23, image1.size.width, image1.size.height);
 
 GuideView *guidView = [[GuideView alloc]initWithData:@[@[guidModel1,guidModel2],@[guidModel4,guidModel3],@[guidModel5,guidModel6],@[guidModel7,guidModel8,guidModel9]]];
 
 [guidView showInView:self.view];

 */

#import <UIKit/UIKit.h>

#define KGuideKey  @"KGuideKey"


#define KSCREEN_WIDTH        [[UIScreen mainScreen] bounds].size.width
#define KSCREEN_HEIGHT       [[UIScreen mainScreen] bounds].size.height

@interface GuideModel : NSObject

@property (nonatomic, strong) NSString *imageName;//图片名字
@property (nonatomic, assign) CGRect rect;//坐标
@property (nonatomic, assign) BOOL isButton; //判断是不是按钮
@end

@interface GuideView : UIView

- (instancetype)initWithData:(NSArray*)data;


- (void)showInView:(UIView *)aView;

@end
