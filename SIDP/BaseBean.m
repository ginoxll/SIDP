//
//  BaseBean.m
//  scdp
//
//  Created by Miguel Angel Vásquez Jiménez on 10/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#import "BaseBean.h"

@implementation BaseBean

- (BOOL) statusRegister
{
    return statusRegister;
}

- (void) setStatusRegister:(BOOL)value
{
    statusRegister = value;
}

- (NSDate*) registrationDate
{
    return registrationDate;
}

- (void) setRegistrationDate:(NSDate *)value
{
    registrationDate = value;
}
@end
