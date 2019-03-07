//
//  CGFImageBrowserCell.h
//  CGFImageBrowser
//
//  Created by 初光夫 on 2019/3/7.
//  Copyright © 2019 初光夫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CGFImageBrowserCell : UICollectionViewCell

/// 浏览器item中dismiss的回调
@property (nonatomic, copy) void (^cgf_browserItemDismissBlock)(void);

@end
