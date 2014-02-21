//
//  Kid.h
//  Delegate Protocols
//
//  Created by John Clem on 2/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KidDelegate <NSObject>
@required
- (void)pickMeUp;
@optional
- (void)getSomeFastFood;
@end

@interface Kid : NSObject

@property (nonatomic) NSInteger friendCount;

- (void)textKidWithMessage:(NSString *)message;

@property (nonatomic, unsafe_unretained) id<KidDelegate> delegate;

@end
