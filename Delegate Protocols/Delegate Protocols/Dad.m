//
//  Dad.m
//  Delegate Protocols
//
//  Created by John Clem on 2/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "Dad.h"
#import "Kid.h"

@interface Dad () <KidDelegate>

@end

@implementation Dad


- (id)init
{
    if (self = [super init]) {
        Kid *kidOne = [[Kid alloc] init];
        Kid *kidTwo = [[Kid alloc] init];
        Kid *kidThree = [[Kid alloc] init];
        
        [kidOne setDelegate:self];
        [kidTwo setDelegate:self];
        [kidThree setDelegate:self];
        
        [kidOne textKidWithMessage:@"You almost done?"];
    }
    
    return self;
}

- (void)pickMeUp
{
    NSLog(@"On my way");
}

@end
