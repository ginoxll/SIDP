//
//  Conexion.h
//  SCDP
//
//  Created by MAC on 3/7/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <sqlite3.h>

@interface Conexion : NSObject{
    sqlite3 *bd;
}

- (NSString *) obtenerRutaBD;
- (sqlite3_stmt *) ListaDB :(NSString *)nombre_tabla;
- (sqlite3_stmt *) sqlLibre: (NSString *)consulta;
- (int) Insertar:(NSString *)campos valores:(NSString *)valores nombreTabla:(NSString *)nombreTabla;
- (int) Borrar:(NSString *)condicion valor:(NSString *)valor nombreTabla:(NSString *)nombreTabla;
- (NSMutableArray*) getArrayAsociativeOfRecords:(NSString*)query;
@end
