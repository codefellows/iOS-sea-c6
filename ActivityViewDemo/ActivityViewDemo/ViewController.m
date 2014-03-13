//
//  ViewController.m
//  ActivityViewDemo
//
//  Created by John Clem on 3/11/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    
    
}
- (IBAction)shareMe:(id)sender {
    NSString *text = @"Hello World4!";
    
    NSString *text2 = @"Hello World1!";
    
    NSString *text3 = @"Hello World2!";
    
    NSString *text4 = @"Hello World3!";
    UIImage *image = [UIImage imageNamed:@"Unknown.jpeg"];
    
    NSArray *allItems = [NSArray arrayWithObjects:text,text2,text3,text4,image, nil];
    
    UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:allItems applicationActivities:nil];
    [activityController setExcludedActivityTypes:@[UIActivityTypePostToTwitter]];
    
    [self presentViewController:activityController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
