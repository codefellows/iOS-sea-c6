//
//  Repo.h
//  Core Data Demo
//
//  Created by John Clem on 3/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class User;

@interface Repo : NSManagedObject

@property (nonatomic, retain) NSNumber * repo_id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * repo_description;
@property (nonatomic, retain) NSString * html_url;
@property (nonatomic, retain) NSManagedObject *organization;
@property (nonatomic, retain) User *owner;

@end
