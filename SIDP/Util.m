//
//  Util.m
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 19/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "Util.h"

@implementation Util


+ (void) showMessage:(NSString*) message title:(NSString*) title
{
    UIAlertView* alert  = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"OK"otherButtonTitles:nil];
    
    [alert show];
}

+ (void) messageConfirm:(NSString *)textMessage delegate:(id)objDelegate
{
    NSString* message = [[@"¿Seguro que desea eliminar " stringByAppendingString:textMessage] stringByAppendingString:@"?"];
    
    UIAlertView* alert = [[UIAlertView alloc]
                          initWithTitle:@"Confirmación" message:message delegate:objDelegate cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Sí", nil
                          ];
    [alert show];
}
@end
