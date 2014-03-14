//
//  DetailViewController.m
//  Github Client
//
//  Created by John Clem on 3/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setRepo:(id)newRepo
{
    if (_repo != newRepo) {
        _repo = newRepo;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }
    
    NSLog(@"Repo URL: %@", _repo.html_url);
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.repo.html_url) {
        
        if (!self.repo.htmlCache) {
            NSData *cacheData = [NSData dataWithContentsOfURL:_repo.html_url];
            NSString *cacheString = [[NSString alloc] initWithData:cacheData encoding:NSUTF8StringEncoding];
            _repo.htmlCache = cacheString;
            [self configureView];
        } else {
            [_repoWebView loadHTMLString:_repo.htmlCache baseURL:nil];
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
