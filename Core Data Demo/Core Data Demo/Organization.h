//
//  Organization.h
//  Core Data Demo
//
//  Created by John Clem on 3/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Repo;

@interface Organization : NSManagedObject

@property (nonatomic, retain) NSString * login;
@property (nonatomic, retain) NSSet *repos;
@end

@interface Organization (CoreDataGeneratedAccessors)

- (void)addReposObject:(Repo *)value;
- (void)removeReposObject:(Repo *)value;
- (void)addRepos:(NSSet *)values;
- (void)removeRepos:(NSSet *)values;

@end
