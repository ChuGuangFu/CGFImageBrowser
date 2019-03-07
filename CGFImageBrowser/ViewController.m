//
//  ViewController.m
//  CGFImageBrowser
//
//  Created by 初光夫 on 2019/2/20.
//  Copyright © 2019 初光夫. All rights reserved.
//

#import "ViewController.h"
#import "CGFImageBrowserViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    scrollView.delegate = self;
//    scrollView.minimumZoomScale = 1;
//    scrollView.maximumZoomScale = 2;
//    scrollView.zoomScale = 1;
//    [self.view addSubview:scrollView];
//
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:scrollView.bounds];
//    imageView.image = [UIImage imageNamed:@"IMG_0531.JPG"];
//    [scrollView addSubview:imageView];
//    self.imageView = imageView;
    
}

//-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
//    return self.imageView;
//}
//
//-(void)scrollViewDidZoom:(UIScrollView *)scrollView {
//    NSLog(@"正在缩放的时候调用");
//}
//
////当将要开始缩放时，执行该方法。一次有效缩放，就只执行一次。
//- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view{
//    NSLog(@"scrollViewWillBeginZooming");
//}
//
////当缩放结束后，并且缩放大小回到minimumZoomScale与maximumZoomScale之间后（我们也许会超出缩放范围），调用该方法。
//- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale{
//    NSLog(@"scrollViewDidEndZooming");
//}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGFImageBrowserViewController *browserVC = [[CGFImageBrowserViewController alloc] init];
    browserVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    browserVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:browserVC animated:YES completion:nil];
}

@end
