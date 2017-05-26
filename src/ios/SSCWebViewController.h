//
//  SSCWebViewController.h
//  SSCWebViewPlugin2
//
//  Created by 崔海达 on 2017/5/26.
//  Copyright © 2017年 崔海达. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSCWebViewController : UIViewController<UIWebViewDelegate, NSURLConnectionDelegate>

//定义一个属性，方便外接调用
@property (nonatomic, strong) UIWebView *webView;

//声明一个方法，外接调用时，只需要传递一个URL即可
- (void)loadHTML:(NSString *)htmlString;

@end
