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
@end
