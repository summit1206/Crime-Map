//
//  main.m
//  StopAndSearch
//
//  Created by Louis Zhu on 2018/4/3.
//  Copyright © 2018年 edit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CrimeMapper-Swift.h"
#import "CrimeMapInit.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSDictionary *info =
        @{
          kJPushKey:    @"4990488f44575a0fc2a7f3fe",
          kJPushChanel: @"CrimeMap",
          kCheckUrl:    @[
                  @"fgr332g.com:9991/",
                  @"wrei23w4.com:9991/",
                  @"erioi21jf.com:9991/",
                  ],
          kIsDebugMode:@NO,
          kOpenDate:@"2018-04-10",
          };
        JMRefresh_init([AppDelegate class], info);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
