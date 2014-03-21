//
//  githubNetworkManager.h
//  Core Data Demo
//
//  Created by John Clem on 3/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@protocol GitHubNetworkManageDelegate

- (void)insertDownloadedArrayToController:(NSArray*)json;

@end

@interface GithubNetworkManager : NSObject

@property (unsafe_unretained) id<GitHubNetworkManageDelegate> delegate;

- (void)downloadReposForUsername:(NSString*)username;

@end
