
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_reception_activity.h"
    @implementation perupez_hp_reception_activity
    - (int) set_pkReceptionActivity : (NSString *)nuevo_valor{
            pkReceptionActivity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkReceptionActivity{
            return pkReceptionActivity;
        }
        
        - (int) set_fkReception : (NSString *)nuevo_valor{
            fkReception = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkReception{
            return fkReception;
        }
        
        - (int) set_fkActivity : (NSString *)nuevo_valor{
            fkActivity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkActivity{
            return fkActivity;
        }
        
        - (int) set_registrationDate : (NSString *)nuevo_valor{
            registrationDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_registrationDate{
            return registrationDate;
        }
        
        - (int) set_statusRegister : (NSString *)nuevo_valor{
            statusRegister = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_statusRegister{
            return statusRegister;
        }
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkReceptionActivity stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkReception];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkActivity];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:registrationDate];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cad4 = [cad3 stringByAppendingString:statusRegister];
                NSString *cadsql = cad4;int res = [conx Insertar:@"pkReceptionActivity,fkReception,fkActivity,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_reception_activity" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_reception_activity SET ";
    NSString *cadtmp0 = [@"pkReceptionActivity = '" stringByAppendingString:pkReceptionActivity];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkReception = '" stringByAppendingString:fkReception];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkActivity = '" stringByAppendingString:fkActivity];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"' "];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadFinal = cad4;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkReceptionActivity = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkReceptionActivity];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkReceptionActivity" valor:pkReceptionActivity nombreTabla:@"perupez_hp_reception_activity"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_reception_activity"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_reception_activity where pkReceptionActivity = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkReceptionActivity];
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
	NSString *sql1 = "Select * from perupez_hp_reception_activity WHERE ";
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
    