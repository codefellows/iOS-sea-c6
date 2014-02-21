//
//  ViewController.m
//  Delegate Protocols
//
//  Created by John Clem on 2/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import "ColorViewController.h"

@interface ViewController () <ColorViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UISwitch *mySwitch;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}
- (IBAction)showBlackViewController:(id)sender
{
    ColorViewController *blackViewController = [ColorViewController new];
    blackViewController.view.backgroundColor = [UIColor blackColor];
    [self presentViewController:blackViewController animated:YES completion:^{
        if (!self.mySwitch.isOn) {
            blackViewController.view.backgroundColor = [UIColor whiteColor];
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showColorView"]) {
        ColorViewController *color = segue.destinationViewController;
        [color addSwitchToView:self.mySwitch.isOn];
        color.delegate = self;
        
        if (!self.mySwitch.isOn) {
            color.view.backgroundColor = [UIColor whiteColor];
        }
    }
}

- (void)switchWasFlipped:(BOOL)isOn
{
    [self.mySwitch setOn:isOn animated:NO];
}






@end
