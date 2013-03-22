//
//  DataTable.m
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 19/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "DataTable.h"

@implementation DataTable

- (void) setDescription:(NSString *)value
{
    description = value;
}

- (NSString*) description
{
    return description;
}

- (void) setModelName:(NSString *)value
{
    modelName = value;
}

- (NSString*) modelName
{
    return modelName;
}

+ (NSMutableArray*) listTableMaintenance
{
    NSMutableArray* list = [NSMutableArray new];
    
    DataTable* objDataTable = [DataTable new];
    [objDataTable setDescription:@"Tipo de Documento"];
    [objDataTable setModelName:@"DocumentType"];
    
    [list addObject:objDataTable];

    objDataTable = [DataTable new];
    [objDataTable setDescription:@"Tipo de Operación"];
    [objDataTable setModelName:@"OperationType"];
    
    [list addObject:objDataTable];
    
    objDataTable = [DataTable new];
    [objDataTable setDescription:@"Materia Prima"];
    [objDataTable setModelName:@"RawMaterial"];
    
    [list addObject:objDataTable];
    
    objDataTable = [DataTable new];
    [objDataTable setDescription:@"Persona"];
    [objDataTable setModelName:@"Person"];
    
    [list addObject:objDataTable];
    
    objDataTable = [DataTable new];
    [objDataTable setDescription:@"Trabajador"];
    [objDataTable setModelName:@"Employee"];
    
    [list addObject:objDataTable];
    
    return list;
}

@end
