//
//  MasterViewController.m
//  Github Client
//
//  Created by John Clem on 3/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Repo.h"

@interface MasterViewController () <UISearchBarDelegate>

@property NSMutableArray *repos;

@end

@implementation MasterViewController

- (void)awakeFromNib
{
    self.clearsSelectionOnViewWillAppear = NO;
    self.preferredContentSize = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    [self getReposForQuery:@"iOS"];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self getReposForQuery:searchBar.text];
}

- (void)getReposForQuery:(NSString *)query
{
    NSOperationQueue *downloadQueue = [NSOperationQueue new];
    [downloadQueue addOperationWithBlock:^{

        NSString *searchURLString = [NSString stringWithFormat:@"https://api.github.com/search/repositories?q=%@", query];
        
        NSURL *searchURL = [NSURL URLWithString:searchURLString];
        
        NSData *searchData = [NSData dataWithContentsOfURL:searchURL];
        
        NSDictionary *searchDict = [NSJSONSerialization JSONObjectWithData:searchData
                                                                   options:NSJSONReadingMutableContainers
                                                                     error:nil];
        
        NSMutableArray *tempRepos = [NSMutableArray new];
        
        for (NSDictionary *repo in [searchDict objectForKey:@"items"]) {
            Repo *downloadedRepo = [[Repo alloc] initWithJSON:repo];
            [tempRepos addObject:downloadedRepo];
        }    
        
        NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
        
        [mainQueue addOperationWithBlock:^{
            _repos = tempRepos;
            [self.tableView reloadData];
        }];
    
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _repos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Repo *repo = _repos[indexPath.row];
    cell.textLabel.text = repo.name;
    cell.imageView.image = repo.authorAvatar;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Repo *repo = _repos[indexPath.row];
    self.detailViewController.repo = repo;
}

@end
