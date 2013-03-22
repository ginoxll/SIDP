//
//  DataTable.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 19/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

@interface DataTable : NSObject
{
    NSString* description;
    NSString* modelName;
}

- (void) setDescription:(NSString*) value;
- (NSString*) description;

- (void) setModelName:(NSString*) value;
- (NSString*) modelName;

+ (NSMutableArray*) listTableMaintenance;

@end
