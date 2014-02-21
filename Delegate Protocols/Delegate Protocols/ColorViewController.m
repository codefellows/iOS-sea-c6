//
//  ColorViewController.m
//  Delegate Protocols
//
//  Created by John Clem on 2/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"init with nib name");
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)addSwitchToView:(BOOL)on
{
    self.mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(160, 200, 50, 40)];
    [self.view addSubview:self.mySwitch];
    [self.mySwitch setOn:on animated:YES];
    
    [self.mySwitch addTarget:self
                      action:@selector(notifyDelegateOfSwitchFlippedness)
            forControlEvents:UIControlEventValueChanged];
    
}

- (void)notifyDelegateOfSwitchFlippedness
{
    [self.delegate switchWasFlipped:self.mySwitch.isOn];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
