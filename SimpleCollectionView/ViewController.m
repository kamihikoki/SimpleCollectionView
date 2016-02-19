//
//  ViewController.m
//  SimpleCollectionView
//
//  Created by pepoipod on 2016/02/20.
//  Copyright © 2016年 iwamoto daiki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

#import "ViewController.h"


@interface ViewController ()

@end


@implementation ViewController

static NSString * const cellID = @"cell";
static NSString * const headerID = @"header";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.flowLayout = [[UICollectionViewFlowLayout alloc]init];
    
    NSUInteger space = 3;
    CGRect screenSize = [[UIScreen mainScreen] bounds];
    CGSize cellSize = CGSizeMake((screenSize.size.width - space * 2) / 3, (screenSize.size.width - space * 2) / 3);
    
    self.flowLayout.itemSize = cellSize;
    self.flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    // self.flowLayout.headerReferenceSize = CGSizeMake(100, 30);
    // self.flowLayout.minimumLineSpacing = 16;
    // self.flowLayout.minimumInteritemSpacing = 16;
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, screenSize.size.width, screenSize.size.height) collectionViewLayout:self.flowLayout];
    [self.view addSubview:self.collectionView];
    
    self.collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


# pragma mark - Member Methods

- (void)dismissView {
    [self dismissViewControllerAnimated:YES completion:nil];
}


# pragma mark - UICollectionViewLayoutDelegate

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 3.0f;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 3.0f;
}


#pragma mark - UICollectionViewDelegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 36;
}


#pragma mark - UICollectionViewDataSource

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    //cell.backgroundColor = [UIColor redColor];
    
    UIImageView *cellImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon.jpeg"]];
    cell.backgroundView = cellImage;
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"row = %d", indexPath.row);
}


@end