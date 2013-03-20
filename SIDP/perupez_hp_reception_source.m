
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_reception_source.h"
    @implementation perupez_hp_reception_source
    - (int) set_pkReceptionSource : (NSString *)nuevo_valor{
            pkReceptionSource = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkReceptionSource{
            return pkReceptionSource;
        }
        
        - (int) set_receptionSource : (NSString *)nuevo_valor{
            receptionSource = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_receptionSource{
            return receptionSource;
        }
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkReceptionSource stringByAppendingString:@","];
            NSString *cad1 = [cad0 stringByAppendingString:receptionSource];
                NSString *cadsql = cad1;int res = [conx Insertar:@"pkReceptionSource,receptionSource" valores:cadsql nombreTabla:@"perupez_hp_reception_source" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_reception_source SET ";
    NSString *cadtmp0 = [@"pkReceptionSource = '" stringByAppendingString:pkReceptionSource];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"receptionSource = '" stringByAppendingString:receptionSource];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"' "];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadFinal = cad1;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkReceptionSource = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkReceptionSource];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkReceptionSource" valor:pkReceptionSource nombreTabla:@"perupez_hp_reception_source"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_reception_source"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_reception_source where pkReceptionSource = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkReceptionSource];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_reception_source WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    