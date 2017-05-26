//
//  SSCHTMLController.m
//  SSCWebViewPlugin2
//
//  Created by 崔海达 on 2017/5/26.
//  Copyright © 2017年 崔海达. All rights reserved.
//

#import "SSCHTMLController.h"

@interface SSCHTMLController ()

@end

@implementation SSCHTMLController

- (instancetype)initWithUrl:(NSString *)urlString
{
    self = [super init];
    self.htmlUrl = urlString;
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    [self loadHTML:self.htmlUrl];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
