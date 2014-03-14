//
//  DetailViewController.h
//  Github Client
//
//  Created by John Clem on 3/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) NSURL *repoURL;

@property (weak, nonatomic) IBOutlet UIWebView *repoWebView;
@end
