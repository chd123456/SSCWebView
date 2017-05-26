//
//  SSCHTMLController.h
//  SSCWebViewPlugin2
//
//  Created by 崔海达 on 2017/5/26.
//  Copyright © 2017年 崔海达. All rights reserved.
//

#import "SSCWebViewController.h"

@interface SSCHTMLController : SSCWebViewController
@property (nonatomic, copy) NSString *htmlUrl;
- (instancetype)initWithUrl:(NSString *)urlString;
@end
