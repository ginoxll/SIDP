//
//  BaseBean.h
//  scdp
//
//  Created by Miguel Angel Vásquez Jiménez on 10/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Conexion.h"

@interface BaseBean : NSObject
{
    BOOL statusRegister;
    NSDate* registrationDate;
}

- (BOOL) statusRegister;

- (void) setStatusRegister:(BOOL) value;

- (NSDate*) registrationDate;

- (void) setRegistrationDate:(NSDate*) value;

@end
