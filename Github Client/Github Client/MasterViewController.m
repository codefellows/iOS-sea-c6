//
//  MasterViewController.m
//  Github Client
//
//  Created by John Clem on 3/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

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
    
    _repos = [self getReposForQuery:@"iOS"];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    _repos = [self getReposForQuery:searchBar.text];
    [self.tableView reloadData];
}

- (NSMutableArray *)getReposForQuery:(NSString *)query
{
    NSString *searchURLString = [NSString stringWithFormat:@"https://api.github.com/search/repositories?q=%@", query];
    
    NSURL *searchURL = [NSURL URLWithString:searchURLString];

    NSData *searchData = [NSData dataWithContentsOfURL:searchURL];
    
    NSDictionary *searchDict = [NSJSONSerialization JSONObjectWithData:searchData
                                                               options:NSJSONReadingMutableContainers
                                                                 error:nil];
    return [searchDict objectForKey:@"items"];
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

    NSDictionary *repo = _repos[indexPath.row];
    cell.textLabel.text = [repo objectForKey:@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *repo = _repos[indexPath.row];
    self.detailViewController.repoURL = [NSURL URLWithString:[repo objectForKey:@"html_url"]];
}

@end
