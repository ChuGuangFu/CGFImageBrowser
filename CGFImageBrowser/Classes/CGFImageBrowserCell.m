//
//  CGFImageBrowserCell.m
//  CGFImageBrowser
//
//  Created by 初光夫 on 2019/3/7.
//  Copyright © 2019 初光夫. All rights reserved.
//

#import "CGFImageBrowserCell.h"
#import "CGFImageBrowserView.h"

@implementation CGFImageBrowserCell

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        __weak typeof(self) weakSelf = self;
        CGFImageBrowserView *browserView = [[CGFImageBrowserView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        browserView.cgf_browserViewDismissBlock = ^{
            !weakSelf.cgf_browserItemDismissBlock ? : weakSelf.cgf_browserItemDismissBlock();
        };
        [self.contentView addSubview:browserView];
        
    }
    return self;
}

@end
