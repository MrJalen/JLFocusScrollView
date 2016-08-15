//
//  MainViewController.m
//  JLFocusScrollView
//
//  Created by MrJalen on 16/8/15.
//  Copyright © 2016年 lianjiang. All rights reserved.
//

#import "MainViewController.h"
#import "JLFocusScrollView.h"

@interface MainViewController () <JLFocusScrollViewDeledate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Banner Advert";

    [self localImage];
    [self imageUrl3D];
}


- (void)localImage {
    //本地图片
    JLFocusScrollView *focusView = [[JLFocusScrollView alloc]init];
    focusView.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 220);
    [self.view addSubview:focusView];

    NSArray *image = @[[UIImage imageNamed:@"fengjing01"],
                       [UIImage imageNamed:@"fengjing02"],
                       [UIImage imageNamed:@"fengjing03"],
                       [UIImage imageNamed:@"fengjing04"],
                       [UIImage imageNamed:@"fengjing05"]];

    focusView.imageArray = image;

    [focusView setpageControlCurrentColor:[UIColor redColor] OtherColor:[UIColor whiteColor]];

    [focusView setClickImage:^(NSInteger index) {
        NSLog(@"1.点击了第%ld张图片",index);
    }];
}


- (void)imageUrl3D {
    //网络图片
    NSArray *imageUrl =  @[@"http://g.hiphotos.baidu.com/image/pic/item/f3d3572c11dfa9ecfc13ccc066d0f703918fc12c.jpg",
                           @"http://f.hiphotos.baidu.com/image/pic/item/b151f8198618367ac7d2a1e92b738bd4b31ce5af.jpg",
                           @"http://h.hiphotos.baidu.com/image/pic/item/8435e5dde71190eff91e51ebcb1b9d16fdfa6019.jpg",
                           @"http://h.hiphotos.baidu.com/image/pic/item/4610b912c8fcc3cef4e772759745d688d43f2054.jpg",
                           @"http://e.hiphotos.baidu.com/image/pic/item/6a600c338744ebf8a668dc3fdbf9d72a6059a791.jpg"];

    JLFocusScrollView *focusView = [[JLFocusScrollView alloc] initWithFrame:CGRectZero WithImageArray:imageUrl imageCilckBlock:^(NSInteger index) {
        NSLog(@"2.点击了第%ld张图片",index);
    }];

    focusView.frame = CGRectMake(0, 300, [UIScreen mainScreen].bounds.size.width, 220);
    [self.view addSubview:focusView];

    focusView.delegate = self;
    focusView.style = JLFocusScrollViewScrollStyle_3DRotation;

    [focusView setpageControlCurrentColor:[UIColor redColor] OtherColor:[UIColor whiteColor]];
}


- (void)focusScrollView:(JLFocusScrollView *)focusScrollView didSelectImageAtIndex:(NSInteger)index {

}

@end
