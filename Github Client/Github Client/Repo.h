//
//  Repo.h
//  Github Client
//
//  Created by John Clem on 3/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Repo : NSObject

- (id)initWithJSON:(NSDictionary *)json;

@property (nonatomic, strong) NSURL *html_url;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIImage *authorAvatar;

@property (nonatomic, strong) NSString *htmlCache;

@end
