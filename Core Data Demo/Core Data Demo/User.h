//
//  User.h
//  Core Data Demo
//
//  Created by John Clem on 3/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject

@property (nonatomic, retain) NSSet *repos;
@property (nonatomic, retain) NSNumber *user_id;
@property (nonatomic, retain) NSString *name;

@end

@interface User (CoreDataGeneratedAccessors)

- (void)addReposObject:(NSManagedObject *)value;
- (void)removeReposObject:(NSManagedObject *)value;
- (void)addRepos:(NSSet *)values;
- (void)removeRepos:(NSSet *)values;

@end
