//
//  Event.h
//  Core Data Demo
//
//  Created by John Clem on 3/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Review;

@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * time;
@property (nonatomic, retain) NSSet *reviews;
@end

@interface Event (CoreDataGeneratedAccessors)

- (void)addReviewsObject:(Review *)value;
- (void)removeReviewsObject:(Review *)value;
- (void)addReviews:(NSSet *)values;
- (void)removeReviews:(NSSet *)values;

@end
