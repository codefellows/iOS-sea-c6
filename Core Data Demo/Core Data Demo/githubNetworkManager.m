//
//  githubNetworkManager.m
//  Core Data Demo
//
//  Created by John Clem on 3/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "GithubNetworkManager.h"

#define GITHUB_API_URL @"https://api.github.com/users/%@/repos"
@interface GithubNetworkManager()

@property (nonatomic,strong) NSOperationQueue *downloadQueue;

@end

@implementation GithubNetworkManager

- (void)downloadReposForUsername:(NSString *)username
{
    if (!self.downloadQueue) {
        self.downloadQueue = [NSOperationQueue new];
    }
    
    [self.downloadQueue addOperationWithBlock:^{
        NSString *searchUrlString = [NSString stringWithFormat:GITHUB_API_URL,username];
        NSURL *searchURL = [NSURL URLWithString:searchUrlString];
        
        NSError *error;
        
        NSData *data = [NSData dataWithContentsOfURL:searchURL];
        NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        if (!error) {
            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                [self.delegate insertDownloadedArrayToController:json];
            }];
        } else {
            NSLog(@"error %@",error);
        }
    }];
}

@end
