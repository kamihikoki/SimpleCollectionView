//
//  ViewController.h
//  SimpleCollectionView
//
//  Created by pepoipod on 2016/02/20.
//  Copyright © 2016年 iwamoto daiki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (retain, nonatomic) UICollectionViewFlowLayout *flowLayout;
@property (retain, nonatomic) UICollectionView *collectionView;


@end

