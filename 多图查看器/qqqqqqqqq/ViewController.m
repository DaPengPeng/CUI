//
//  ViewController.m
//  qqqqqqqqq
//
//  Created by GT_MAC_2 on 15/7/21.
//  Copyright (c) 2015年 hyc. All rights reserved.
//

#import "ViewController.h"
#import "SeeImageObj.h"
#import "SeeImagesView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //照片查看器
    
    SeeImageObj *z = [[SeeImageObj alloc]init];
    z.name = @"1.jpg";
    z.whidth = @"320";
    z.height = @"400";
    z.imgTitle = @"么么哒";
    z.imgContent = @"放射科访客量氛围是非窝俄勒冈就饿哦个叫哦我二哥家苹果就遂非文过问过跟水电费万积分我饿哦就分为哦该温哥华文化宫";
    
    SeeImageObj *z1 = [[SeeImageObj alloc]init];
    z1.name = @"5.jpg";
    z1.whidth = @"320";
    z1.height = @"400";
    z1.imgTitle = @"潇洒如风轻飘飘";
    z1.imgContent = @"一不注意就五杀了哦，事服务费的思考方式可浪费了开发和劳务费是放假了罚款死灵法师卡拉蜂哈萨克理发了房间爱上了法律纠纷撒垃圾发送垃圾费";
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:z,z1, nil];
    
    SeeImagesView * Img = [[SeeImagesView alloc]initWithFrame:CGRectMake(0, 10, 320, 400)];
    [Img setObj:z ImageArray:arr];
    Img.isOpen = YES;
    [self.view addSubview:Img];
    
    SeeImagesView *ss = [[SeeImagesView alloc]init];
    CGRect re1 = ss.frame;
    re1.origin.x = 200;
    re1.origin.y = 250;
    re1.size.width = 320;
    re1.size.height = 400;
    ss.frame = re1;
    
    [ss setObj:z1 ImageArray:nil];
    ss.isOpen = YES;
    [self.view addSubview:ss];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
