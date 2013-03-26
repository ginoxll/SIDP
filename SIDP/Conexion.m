//
//  Conexion.m
//  SCDP
//
//  Created by MAC on 3/7/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

@implementation Conexion

- (NSString *) obtenerRutaBD{
    NSString *dirDocs;
    NSArray *rutas;
    NSString *rutaBD;
    rutas = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    dirDocs = [rutas objectAtIndex:0];
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    rutaBD = [[NSString alloc] initWithString:[dirDocs stringByAppendingPathComponent:@"perupez_db.db"]];
    if([fileMgr fileExistsAtPath:rutaBD] == NO){
        [fileMgr copyItemAtPath:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"perupez_db.db"] toPath:rutaBD error:NULL];
    }
    return rutaBD;
}

- (sqlite3_stmt *) ListaDB: (NSString *)nombreTabla{
    NSString *ubicacionDB = [self obtenerRutaBD];
    if(!(sqlite3_open([ubicacionDB UTF8String], &bd) == SQLITE_OK)){
        NSLog(@"No se puede conectar con la BD");
    }
    NSString  *sqlBase = @"SELECT * FROM ";
    NSString *sqlSTR = [sqlBase stringByAppendingString:nombreTabla];
    const char *sentenciaSQL = [sqlSTR UTF8String];
    sqlite3_stmt *sqlStatement;

    if(sqlite3_prepare_v2(bd,sentenciaSQL, -1, &sqlStatement, NULL) != SQLITE_OK){
        NSLog(@"Problema al preparar el statement");
    }
    sqlite3_close(bd);
    return sqlStatement;
}

- (sqlite3_stmt *) sqlLibre: (NSString *)consulta{
    NSString *ubicacionDB = [self obtenerRutaBD];
    if(!(sqlite3_open([ubicacionDB UTF8String], &bd) == SQLITE_OK)){
        NSLog(@"No se puede conectar con la BD");
    }
    const char *sentenciaSQL = [consulta UTF8String];
    sqlite3_stmt *sqlStatement;
    
    if(sqlite3_prepare_v2(bd,sentenciaSQL, -1, &sqlStatement, NULL) != SQLITE_OK){
        NSLog(@"Problema al preparar el statement");
    }
    sqlite3_close(bd);
    return sqlStatement;
}

- (int) Insertar:(NSString *)campos valores:(NSString *)valores nombreTabla:(NSString *)nombreTabla{
    int verdura = 0;
    NSString *ubicacionDB = [self obtenerRutaBD];
    if(!(sqlite3_open([ubicacionDB UTF8String], &bd) == SQLITE_OK)){
        NSLog(@"No se puede conectar con la BD");
        verdura = 0;
    } else {
        NSString *sqlBase1 = @"INSERT INTO ";
        NSString *sqlBase2 = @" (";
        NSString *sqlBase3 = @") values(";
        NSString *sqlBase4 = @")";
        NSString *sqlInsert1 = [sqlBase1 stringByAppendingString:nombreTabla];
        NSString *sqlInsert2 = [sqlInsert1 stringByAppendingString:sqlBase2];
        NSString *sqlInsert3 = [sqlInsert2 stringByAppendingString:campos];
        NSString *sqlInsert4 = [sqlInsert3 stringByAppendingString:sqlBase3];
        NSString *sqlInsert5 = [sqlInsert4 stringByAppendingString:valores];
        NSString *sqlInsert6 = [sqlInsert5 stringByAppendingString:sqlBase4];
        const char *sentenciaSQL = [sqlInsert6 UTF8String];
        sqlite3_stmt *sqlStatement;
 
        if(sqlite3_prepare_v2(bd, sentenciaSQL, -1, &sqlStatement, NULL) != SQLITE_OK){
            NSLog(@"Problema al preparar el statement");
            verdura = 0;
        } else {
            if(sqlite3_step(sqlStatement) == SQLITE_DONE){
                sqlite3_finalize(sqlStatement);
                sqlite3_close(bd);
                verdura = 1;
            }
        }
    }
    return verdura;
}


- (int) Borrar:(NSString *)condicion valor:(NSString *)valor nombreTabla:(NSString *)nombreTabla{
    int verdura = 0;
    NSString *ubicacionBD = [self obtenerRutaBD];
    if(!(sqlite3_open([ubicacionBD UTF8String], &bd) == SQLITE_OK)){
        NSLog(@"No se puede conectar con la BD");
        verdura = 0;
    } else {
        NSString *sqlBase1 = @"DELETE FROM ";
        NSString *sqlBase2 = @" WHERE ";
        NSString *sqlBase3 = @" = ";
        NSString *sqlInsert1 = [sqlBase1 stringByAppendingString:nombreTabla];
        NSString *sqlInsert2 = [sqlInsert1 stringByAppendingString:sqlBase2];
        NSString *sqlInsert3 = [sqlInsert2 stringByAppendingString:condicion];
        NSString *sqlInsert4 = [sqlInsert3 stringByAppendingString:sqlBase3];
        NSString *sqlInsert5 = [sqlInsert4 stringByAppendingString:valor];
        const char *sentenciaSQL = [sqlInsert5 UTF8String];
        sqlite3_stmt *sqlStatement;
        if(sqlite3_prepare_v2(bd, sentenciaSQL, -1, &sqlStatement, NULL) != SQLITE_OK){
            NSLog(@"Problema al preparar el statement.");
            verdura = 0;
        } else {
            if(sqlite3_step(sqlStatement) == SQLITE_DONE){
                sqlite3_finalize(sqlStatement);
                sqlite3_close(bd);
                verdura = 1;
            }
        }
    }
    return verdura;
}

- (NSMutableArray*) getArrayAsociativeOfRecords:(NSString*)query
{
    NSMutableArray* colum = [self getColumNames:query];
    NSMutableArray* records = [NSMutableArray new];
    NSString* dbPath = [self obtenerRutaBD];
    static sqlite3* dataBase;
    sqlite3_stmt* statement;
    if(sqlite3_open([dbPath UTF8String], &dataBase) == SQLITE_OK)
    {
        if(sqlite3_prepare_v2(dataBase, [query UTF8String], -1, &statement, nil) == SQLITE_OK)
        {
            while(sqlite3_step(statement) == SQLITE_ROW)
            {
                NSMutableDictionary* row = [NSMutableDictionary new];
                for(int i = 0; i < [colum count]; i++)
                {
                    char* value = (char *)sqlite3_column_text(statement, i);
                    if(value != nil)
                        [row setObject:[NSString stringWithUTF8String:value] forKey:[colum objectAtIndex:i]];
                }
                [records addObject:row];
            }
            sqlite3_finalize(statement);
        }
    }
    sqlite3_close(dataBase);
    return records;
}

- (NSMutableArray*) getColumNames:(NSString*)query
{
    NSString* dbPath = [self obtenerRutaBD];
    NSMutableArray* result =  [NSMutableArray new];
    static sqlite3* dataBase;
    char* hola = "hola";
    if(sqlite3_open([dbPath UTF8String], &dataBase) == SQLITE_OK)
    {
        sqlite3_exec(dataBase, [query UTF8String], callBackSelect, CFBridgingRetain(result), &hola);
    }
    sqlite3_close(dataBase);
    return result;
}

int callBackSelect(void* param, int count, char** values, char** columns)
{
    NSMutableArray* var = (NSMutableArray*)CFBridgingRelease(param);
        
    for(int i = 0; i < count; i++)
    {
        NSString* columName = [NSString stringWithUTF8String:columns[i]];
        [var addObject:columName];
    }
    return 1;
}
@end
