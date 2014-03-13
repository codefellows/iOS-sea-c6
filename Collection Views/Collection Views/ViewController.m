//
//  ViewController.m
//  Collection Views
//
//  Created by John Clem on 3/6/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import "PhotoCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) NSMutableArray *photos;
@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _photos = [[NSMutableArray alloc] init];
    
    for (int i=1; i<9; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i]];
        [_photos addObject:image];
    }
    
}

- (IBAction)photoWasPressed:(UILongPressGestureRecognizer *)recognizer
{
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        NSLog(@"Picked Up");
    } else if (recognizer.state == UIGestureRecognizerStateEnded) {
        NSLog(@"Dropped");
        
        NSIndexPath *firstPath = [_collectionView indexPathForItemAtPoint:[recognizer locationInView:_collectionView]];
        
        NSIndexPath *secondPath = [NSIndexPath indexPathForRow:3 inSection:0];
        
        [_collectionView moveItemAtIndexPath:firstPath toIndexPath:secondPath];
    }

    
    NSLog(@"Gesture View: %@", recognizer.view);
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell"
                                                                           forIndexPath:indexPath];

    cell.photoView.image = _photos[indexPath.row];
    
    return cell;
}

@end
