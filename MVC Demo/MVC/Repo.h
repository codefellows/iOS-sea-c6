//
//  Repo.h
//  MVC
//
//  Created by John Clem on 2/11/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Repo : NSObject

- (id)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSURL *html_url;

@end
