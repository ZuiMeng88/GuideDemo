//
//  GuideView.m
//  ALADDIN
//
//  Created by xiao on 2017/1/13.
//  Copyright © 2017年 xiao. All rights reserved.
//

#import "GuideView.h"

@interface GuideView()

@property (nonatomic, strong) NSArray *data;
@property(nonatomic,strong) UIImage *bgImage;
@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) UIView *backView;

@end

@implementation GuideView


- (instancetype)initWithData:(NSArray*)data{

    self = [super initWithFrame:CGRectZero];
    if (self) {
        
        _data = data;
        [self setBackgroundColor:[UIColor clearColor]];
        
        _backView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, KSCREEN_WIDTH, KSCREEN_HEIGHT)];
        _backView.backgroundColor = [UIColor blackColor];
        _backView.alpha = 0.75;
        [self addSubview:_backView];
        
        
        [self creatViewWith:data.firstObject];
        

    }
    return self;
}

- (void)creatViewWith:(NSArray *)models{

    
    for (int i = 0; i < models.count; i ++) {
        GuideModel *model = models[i];
        if (model.isButton) {
            
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame =  model.rect;
            [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
            [button setImage:[UIImage imageNamed:model.imageName] forState:UIControlStateNormal];
            [self addSubview:button];

        }else{
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:model.rect];
            imageView.image =  [UIImage imageNamed:model.imageName];
            imageView.userInteractionEnabled = YES;
            [self addSubview:imageView];
            
        }
    }
   
}

- (void)buttonAction:(UIButton *)button{

    _index ++;
    if (_index == _data.count) {
        [UIView animateWithDuration:0.2 delay:0
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
                             self.alpha = 0.0f;
                         }
                         completion:^(BOOL finished) {
                             if (finished) {
                                 [self removeFromSuperview];
                                 
                                 [[NSUserDefaults standardUserDefaults] setBool:YES forKey:KGuideKey];
                                  [NSUserDefaults standardUserDefaults];
                                 
                             }
                         }];
    }else{
        for (UIView *subView in self.subviews) {
            if (![subView isMemberOfClass:[UIView class]]) {
                [subView removeFromSuperview];
            }
        }
        [self creatViewWith:_data[_index]];
    }
}

- (void)showInView:(UIView *)aView
{
    self.alpha = 0.0f;

    self.frame = _backView.frame;
    [aView addSubview:self];
    
    [UIView animateWithDuration:0.2 delay:0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.alpha = 1.0f;
                     }
                     completion:nil];
    
}


@end

@implementation GuideModel


@end
