
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_def_sec_module.h"
    @implementation perupez_def_sec_module
    - (int) set_pkModule : (NSString *)nuevo_valor{
            pkModule = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkModule{
            return pkModule;
        }
        
        - (int) set_fkSystem : (NSString *)nuevo_valor{
            fkSystem = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSystem{
            return fkSystem;
        }
        
        - (int) set_nameModule : (NSString *)nuevo_valor{
            nameModule = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_nameModule{
            return nameModule;
        }
        
        - (int) set_nameTable : (NSString *)nuevo_valor{
            nameTable = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_nameTable{
            return nameTable;
        }
        
        - (int) set_showInterface : (NSString *)nuevo_valor{
            showInterface = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_showInterface{
            return showInterface;
        }
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkModule stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkSystem];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:nameModule];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:nameTable];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cad4 = [cad3 stringByAppendingString:showInterface];
                NSString *cadsql = cad4;int res = [conx Insertar:@"pkModule,fkSystem,nameModule,nameTable,showInterface" valores:cadsql nombreTabla:@"perupez_def_sec_module" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_sec_module SET ";
    NSString *cadtmp0 = [@"pkModule = '" stringByAppendingString:pkModule];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkSystem = '" stringByAppendingString:fkSystem];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"nameModule = '" stringByAppendingString:nameModule];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"nameTable = '" stringByAppendingString:nameTable];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"showInterface = '" stringByAppendingString:showInterface];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"' "];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadFinal = cad4;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkModule = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkModule];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkModule" valor:pkModule nombreTabla:@"perupez_def_sec_module"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_sec_module"];
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
    NSString *cadBase1 = @"Select * from perupez_def_sec_module where pkModule = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkModule];
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
	NSString *sql1 = "Select * from perupez_def_sec_module WHERE ";
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
    