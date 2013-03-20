
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_def_sec_detail_audit.h"
    @implementation perupez_def_sec_detail_audit
    - (int) set_pkDetailAudit : (NSString *)nuevo_valor{
            pkDetailAudit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkDetailAudit{
            return pkDetailAudit;
        }
        
        - (int) set_fkAudit : (NSString *)nuevo_valor{
            fkAudit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkAudit{
            return fkAudit;
        }
        
        - (int) set_fkTable : (NSString *)nuevo_valor{
            fkTable = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkTable{
            return fkTable;
        }
        
        - (int) set_siud : (NSString *)nuevo_valor{
            siud = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_siud{
            return siud;
        }
        
        - (int) set_fkKey : (NSString *)nuevo_valor{
            fkKey = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkKey{
            return fkKey;
        }
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkDetailAudit stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkAudit];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkTable];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:siud];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cad4 = [cad3 stringByAppendingString:fkKey];
                NSString *cadsql = cad4;int res = [conx Insertar:@"pkDetailAudit,fkAudit,fkTable,siud,fkKey" valores:cadsql nombreTabla:@"perupez_def_sec_detail_audit" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_sec_detail_audit SET ";
    NSString *cadtmp0 = [@"pkDetailAudit = '" stringByAppendingString:pkDetailAudit];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkAudit = '" stringByAppendingString:fkAudit];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkTable = '" stringByAppendingString:fkTable];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"siud = '" stringByAppendingString:siud];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkKey = '" stringByAppendingString:fkKey];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"' "];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadFinal = cad4;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkDetailAudit = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkDetailAudit];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkDetailAudit" valor:pkDetailAudit nombreTabla:@"perupez_def_sec_detail_audit"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_sec_detail_audit"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_def_sec_detail_audit where pkDetailAudit = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkDetailAudit];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_def_sec_detail_audit WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    