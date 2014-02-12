//
//  ViewController.m
//  MVC
//
//  Created by John Clem on 2/11/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import "Repo.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *repoNameLabel;
@property (nonatomic, strong) Repo *currentRepo;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    Repo *newRepo = [Repo new];

    newRepo.name = @"IBOutlets & NSLogs";
    newRepo.html_url = [NSURL URLWithString:@"http://google.com"];
    
    _repoNameLabel.text = newRepo.name;
    NSLog(@"%@, %@", newRepo.name, newRepo.html_url);
    
    self.currentRepo = newRepo;
}

- (void)setCurrentRepo:(Repo *)currentRepo
{
    _currentRepo = currentRepo;
    
    self.view.backgroundColor = [UIColor blueColor];
}


- (IBAction)loadRepoWebPage:(id)sender
{
    NSLog(@"New Repo Name: %@", self.currentRepo.name);
    
    [[UIApplication sharedApplication] openURL:self.currentRepo.html_url];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
