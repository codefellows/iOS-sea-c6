//
//  ViewController.m
//  Subviews
//
//  Created by John Clem on 2/27/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *greenView;
@property (weak, nonatomic) IBOutlet UIView *stick;
@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton *redButton = [[UIButton alloc] initWithFrame:CGRectMake(100.f, 60.f, 120.f, 120.f)];
    redButton.backgroundColor = [UIColor redColor];
//    [redButton addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
//    [_greenView addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:redButton];
    
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[_greenView]];
    
    [_animator addBehavior:gravity];
    
    UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:@[_greenView, _stick]];
    
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    
    [_animator addBehavior:collision];
    
    UIAttachmentBehavior *attachment = [[UIAttachmentBehavior alloc] initWithItem:redButton attachedToItem:_greenView];
    
    [_animator addBehavior:attachment];
}

- (void)buttonTouched:(id)sender
{
    if ([sender isEqual:_greenView]) {
        NSLog(@"Green View Touched");
    } else {
        CGRect originalFrame = _greenView.frame;
        NSLog(@"Button Was Touched");
        [UIView animateWithDuration:2.5
                              delay:0.f
             usingSpringWithDamping:0.25
              initialSpringVelocity:1.f
                            options:UIViewAnimationOptionAutoreverse
                         animations:^{
                             _greenView.frame = CGRectMake(0, 0, 120, 120);
                         }
                         completion:^(BOOL finished) {
                             _greenView.frame = originalFrame;
                         }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}
@end
