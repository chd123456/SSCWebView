/********* SSCWebView.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "SSCHTMLController.h"
@interface SSCWebView : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation SSCWebView

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
        [self SSCWebViewStarWithUrl:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


-(void)SSCWebViewStarWithUrl:(NSString *)urlString
{
    UIViewController *vc = [[UIViewController alloc] init];
    [vc.view setBackgroundColor:[UIColor whiteColor]];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    nvc.navigationBar.translucent = NO;
    SSCHTMLController *htmlVC = [[SSCHTMLController alloc] initWithUrl:urlString];
    [self.viewController presentViewController:nvc animated:YES completion:^{
        [nvc pushViewController:htmlVC animated:NO];
    }];
}

@end
