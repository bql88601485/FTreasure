//
//  ProductDetailsViewController.m
//  WinTreasure
//
//  Created by Apple on 16/6/13.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "ProductDetailsViewController.h"
#import "ProductDetailCell.h"
#import "ProductViewFooter.h"

@interface ProductDetailsViewController () <UITableViewDataSource, UITableViewDelegate, DZNEmptyDataSetDelegate, DZNEmptyDataSetSource>

@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) NSArray *imgUrls;
@property (weak, nonatomic) IBOutlet BaseTableView *tableView;

@end

@implementation ProductDetailsViewController
- (UIWebView *)webView {
    if (!_webView) {
        _webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
        [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://1.163.com/detail/349-306132783.html"]]];
    }
    return _webView;
}

- (NSArray *)imgUrls {
    if (!_imgUrls) {
        _imgUrls = @[@"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/2047158/beerhenge.jpg",
                    @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/2016158/avalanche.jpg",
                     @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1839353/pilsner.jpg",
                     @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1833469/porter.jpg",
                     @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1521183/farmers.jpg",
                     @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1391053/tents.jpg",
                     @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1399501/imperial_beer.jpg",
                     @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1488711/fishin.jpg",
                     @"https://d13yacurqjgara.cloudfront.net/users/26059/screenshots/1466318/getaway.jpg"];
    }
    return _imgUrls;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"图文详情";
//    [self.view addSubview:self.webView];
    _tableView.tableFooterView = [ProductViewFooter loadFromXib];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.imgUrls.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProductDetailCell *cell = [ProductDetailCell cellWithTableView:tableView];
    [cell.productImgView setImageWithURL:[NSURL URLWithString:_imgUrls[indexPath.row]] placeholder:nil options:YYWebImageOptionProgressiveBlur completion:^(UIImage * _Nullable image, NSURL * _Nonnull url, YYWebImageFromType from, YYWebImageStage stage, NSError * _Nullable error) {
    }];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return kScreenWidth*3/4;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
