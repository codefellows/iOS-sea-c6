//
//  ColorViewController.h
//  Delegate Protocols
//
//  Created by John Clem on 2/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorViewControllerDelegate <NSObject>

- (void)switchWasFlipped:(BOOL)isOn;

@end


@interface ColorViewController : UIViewController

- (void)addSwitchToView:(BOOL)on;

@property (nonatomic, unsafe_unretained) id<ColorViewControllerDelegate> delegate;

@property (nonatomic, strong) UISwitch *mySwitch;

@end
