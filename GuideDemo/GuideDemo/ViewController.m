//
//  ViewController.m
//  GuideDemo
//
//  Created by xiao on 2017/2/21.
//  Copyright © 2017年 xiao. All rights reserved.
//

#import "ViewController.h"
#import "GuideView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self loadGuide];
    

}


- (void)loadGuide{
    
    //第一层
    
    GuideModel *guidModel1 = [[GuideModel alloc]init];
    UIImage *image1 = [UIImage imageNamed:@"guid_userMessage"];
    guidModel1.imageName = @"guid_userMessage";
    guidModel1.rect = CGRectMake(10, 23, image1.size.width, image1.size.height);
    
    
    GuideModel *guidModel2 = [[GuideModel alloc]init];
    guidModel2.imageName = @"guide_know";
    guidModel2.rect = CGRectMake(KSCREEN_WIDTH/2 - 100/2, 25 + image1.size.height + 30, 100, 50);
    guidModel2.isButton = YES;
    
    //第二层
    GuideModel *guidModel3 = [[GuideModel alloc]init];
    UIImage *image3 = [UIImage imageNamed:@"guid_set"];
    guidModel3.imageName = @"guid_set";
    guidModel3.rect = CGRectMake(KSCREEN_WIDTH - image3.size.width - 8, 20, image3.size.width, image3.size.height);
    
    
    GuideModel *guidModel4 = [[GuideModel alloc]init];
    guidModel4.imageName = @"guide_know";
    guidModel4.rect = CGRectMake(KSCREEN_WIDTH/2 - 100/2, 25 +  image3.size.height + 5 + 30, 100, 50);
    guidModel4.isButton = YES;
    
    //第三层
    GuideModel *guidModel5 = [[GuideModel alloc]init];
    UIImage *image5 = [UIImage imageNamed:@"guid_transaction"];
    guidModel5.imageName = @"guid_transaction";
    guidModel5.rect = CGRectMake(KSCREEN_WIDTH - image5.size.width - 2.5, 150, image5.size.width, image5.size.height);
    
    GuideModel *guidModel6 = [[GuideModel alloc]init];
    guidModel6.imageName = @"guide_know";
    guidModel6.rect = CGRectMake(KSCREEN_WIDTH/2 - 100/2, 25 +  200 + image5.size.height + 30, 100, 50);
    guidModel6.isButton = YES;
    
    //第四层
    GuideModel *guidModel7 = [[GuideModel alloc]init];
    UIImage *image7 = [UIImage imageNamed:@"guide_investment"];
    guidModel7.imageName = @"guide_investment";
    guidModel7.rect = CGRectMake(KSCREEN_WIDTH/2 - image7.size.width/2 - 2.5, 100, image7.size.width, image7.size.height);
    
    
    GuideModel *guidModel8 = [[GuideModel alloc]init];
    UIImage *image8= [UIImage imageNamed:@"guid_calendar"];
    guidModel8.imageName = @"guid_calendar";
    guidModel8.rect = CGRectMake(10, 280, image8.size.width, image8.size.height);
    
    GuideModel *guidModel9 = [[GuideModel alloc]init];
    guidModel9.imageName = @"guid_experience";
    guidModel9.rect = CGRectMake(KSCREEN_WIDTH/2 - 100/2, 25 +100 + image7.size.height + 20 , 100, 50);
    guidModel9.isButton = YES;
    
    
    GuideView *guidView = [[GuideView alloc]initWithData:@[@[guidModel1,guidModel2],@[guidModel4,guidModel3],@[guidModel5,guidModel6],@[guidModel7,guidModel8,guidModel9]]];
    
    [guidView showInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
