//
//  CGFImageBrowserViewController.m
//  CGFImageBrowser
//
//  Created by 初光夫 on 2019/3/7.
//  Copyright © 2019 初光夫. All rights reserved.
//

#import "CGFImageBrowserViewController.h"
#import "CGFImageBrowserCell.h"

@interface CGFImageBrowserViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, assign) UIEdgeInsets safeInsets;
@property (nonatomic, strong) UICollectionView *collectionView;
@end

@implementation CGFImageBrowserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView reloadData];
    
}

-(void)viewSafeAreaInsetsDidChange {
    [super viewSafeAreaInsetsDidChange];
    self.safeInsets = self.view.safeAreaInsets;
}

-(UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 10);
        layout.itemSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height);
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width + 10, self.view.bounds.size.height) collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.pagingEnabled = YES;
        [_collectionView registerClass:[CGFImageBrowserCell class] forCellWithReuseIdentifier:@"CGFImageBrowserCell"];
        [self.view addSubview:_collectionView];
    }
    return _collectionView;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 5;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFImageBrowserCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CGFImageBrowserCell" forIndexPath:indexPath];
    __weak typeof(self) weakSelf = self;
    cell.cgf_browserItemDismissBlock = ^{
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    };
    return cell;
}

-(void)dealloc {
    NSLog(@"图片浏览器释放了");
}

@end
