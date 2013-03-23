//
//  Util.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 19/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//


@interface Util : NSObject

+ (void) showMessage:(NSString*) message title:(NSString*) title;
+ (void) messageConfirm:(NSString*) textMessage delegate:(id)objDelegate;

@end
