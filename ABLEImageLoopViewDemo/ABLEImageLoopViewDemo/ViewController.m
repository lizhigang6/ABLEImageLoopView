//
//  ViewController.m
//  ABLEImageLoopViewDemo
//
//  Created by user on 2017/2/28.
//  Copyright © 2017年 李志刚. All rights reserved.
//

#import "ViewController.h"
#import "ABLEImageLoopView.h"

@interface ViewController ()
@property (retain, nonatomic)  ABLEImageLoopView *imageLoopView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:4];
    for (NSInteger i = 0; i < 4; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d-1.jpg", i+1]];
        [images addObject:image];
    }
    
    ActionBlock block = ^(NSInteger index){
        NSLog(@"点击了第张%ld图片", index);
    };
    
    ABLEImageLoopView *imageLoopView = [ABLEImageLoopView imageLoopView];
    imageLoopView.frame = CGRectMake(0, 0, self.view.frame.size.width, 150);
    imageLoopView.images = images;
    imageLoopView.pageControl.pageIndicatorTintColor = [UIColor greenColor];
    imageLoopView.pageControl.hidden = NO;
    imageLoopView.interval = 3.0;
    imageLoopView.actionBlock = block;
    imageLoopView.alignment = XXPageControlAlignmentBottomCenter;
    //  imageLoopView.leftOrRightMargin = 60;
    imageLoopView.bottomMargin = 15;
    [self.view addSubview:imageLoopView];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
