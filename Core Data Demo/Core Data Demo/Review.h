//
//  Review.h
//  Core Data Demo
//
//  Created by John Clem on 3/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Review : NSManagedObject

@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSNumber * lon;
@property (nonatomic, retain) NSNumber * lat;
@property (nonatomic, retain) NSManagedObject *event;

@end
