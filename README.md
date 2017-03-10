# GuideDemo
简单构建引导层，可扩展

使用方法 
1.初始化数据模型 传入图片及坐标 
2.展示层级是用二维数组，需要展示几层就会有多个数组 ，每一个数组装数据模型，作为一层所展示的指引

GuideModel *guidModel1 = [[GuideModel alloc]init]; UIImage *image1 = [UIImage imageNamed:@"guid_userMessage"]; 

guidModel1.imageName = @"guid_userMessage"; guidModel1.rect = CGRectMake(10, 23, image1.size.width, image1.size.height);

GuideView *guidView = [[GuideView alloc]initWithData:@[@[guidModel1,guidModel2],@[guidModel4,guidModel3]];

[guidView showInView:self.view];

![image](https://github.com/ZuiMeng88/GuideDemo/GuideDemo.gif)
