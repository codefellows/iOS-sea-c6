//
//  Kid.m
//  Delegate Protocols
//
//  Created by John Clem on 2/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "Kid.h"

@implementation Kid

- (void)textKidWithMessage:(NSString *)message
{
    NSLog(@"Received message: %@", message);
//    [self.delegate pickMeUp];
}
@end
