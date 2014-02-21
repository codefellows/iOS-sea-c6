//
//  ViewController.m
//  Categories
//
//  Created by John Clem on 2/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor randomColor];
    
//    NSLog(@"%f, %f, %f", r, g, b);
//    self.view.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
