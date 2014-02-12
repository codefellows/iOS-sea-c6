//
//  Repo.m
//  MVC
//
//  Created by John Clem on 2/11/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "Repo.h"

@implementation Repo

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.name = [dictionary objectForKey:@"name"];
        self.html_url = [NSURL URLWithString:[dictionary objectForKey:@"html_url"]];
    }
    
    return self;
}

@end
