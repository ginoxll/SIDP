//
//  main.m
//  SIDP
//
//  Created by GinoX on 18/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SIDPAppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        @try {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([SIDPAppDelegate class]));
        }
        @catch (NSException *exception) {
            NSLog([exception description]);
        }
    }
}
