//
//  DocumentType.m
//  scdp
//
//  Created by Miguel Angel Vásquez Jiménez on 10/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#import "DocumentType.h"

@implementation DocumentType
@synthesize documentTypeName;
@synthesize pkDocumentType;
@synthesize shortDescription;

+ (NSMutableArray*) listDocumentType
{
    NSMutableArray* list = [NSMutableArray new];
    NSString* query = @"perupez_def_document_type";
    Conexion* objDataBase = [Conexion new];
    
    sqlite3_stmt* result = [objDataBase  ListaDB:query];
    while(sqlite3_step(result) == SQLITE_ROW)
    {
        DocumentType* obj = [DocumentType new];
        [obj setPkDocumentType:sqlite3_column_int64(result, 0)];
        [obj setDocumentTypeName:[NSString stringWithUTF8String:(char*) sqlite3_column_text(result, 2)]];
        [obj setShortDescription:[NSString stringWithUTF8String:(char*) sqlite3_column_text(result, 3)]];
        [list addObject:obj];
    }
    sqlite3_finalize(result);
    return list;
}

@end
