//
//  ViewController.m
//  HorizontalProgressDemo
//
//  Created by AliThink on 15/10/29.
//  Copyright © 2015年 AliThink. All rights reserved.
//

#import "ViewController.h"
#import "HorizontalProgressView.h"

@interface ViewController ()

@end

@implementation ViewController {
    HorizontalProgressView *horizontalProgressView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    horizontalProgressView = [[HorizontalProgressView alloc] init];
    horizontalProgressView.backgroundColor = [ UIColor yellowColor];
    horizontalProgressView.frame = CGRectMake(10, 50, 300, 100);
    horizontalProgressView.progressLevelArray = @[@"Lv1", @"Lv2", @"Lv3", @"Lv4", @"Lv5"];
    horizontalProgressView.lineMaxHeight = 4;
    horizontalProgressView.pointMaxRadius = 12;
    horizontalProgressView.currentLevel = 3;
    horizontalProgressView.animationDuration = 30;
    horizontalProgressView.textPosition = topPostion;
    [self.view addSubview:horizontalProgressView];
}

- (void)viewDidAppear:(BOOL)animated {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)kaishiAction:(id)sender {
    [horizontalProgressView startAnimation];

}
@end
