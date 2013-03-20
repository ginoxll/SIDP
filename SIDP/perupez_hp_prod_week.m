
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_prod_week.h"
    @implementation perupez_hp_prod_week
    - (int) set_pkProdWeek : (NSString *)nuevo_valor{
            pkProdWeek = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkProdWeek{
            return pkProdWeek;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return fkCompany;
        }
        
        - (int) set_weekYear : (NSString *)nuevo_valor{
            weekYear = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_weekYear{
            return weekYear;
        }
        
        - (int) set_weekNumber : (NSString *)nuevo_valor{
            weekNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_weekNumber{
            return weekNumber;
        }
        
        - (int) set_startDate : (NSString *)nuevo_valor{
            startDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_startDate{
            return startDate;
        }
        
        - (int) set_endDate : (NSString *)nuevo_valor{
            endDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_endDate{
            return endDate;
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
    NSString *cad0 = [self.pkProdWeek stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkCompany];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:weekYear];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:weekNumber];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:startDate];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:endDate];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:registrationDate];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cad7 = [cad6 stringByAppendingString:statusRegister];
                NSString *cadsql = cad7;int res = [conx Insertar:@"pkProdWeek,fkCompany,weekYear,weekNumber,startDate,endDate,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_prod_week" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_prod_week SET ";
    NSString *cadtmp0 = [@"pkProdWeek = '" stringByAppendingString:pkProdWeek];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkCompany = '" stringByAppendingString:fkCompany];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"weekYear = '" stringByAppendingString:weekYear];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"weekNumber = '" stringByAppendingString:weekNumber];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"startDate = '" stringByAppendingString:startDate];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"endDate = '" stringByAppendingString:endDate];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"' "];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadFinal = cad7;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkProdWeek = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkProdWeek];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkProdWeek" valor:pkProdWeek nombreTabla:@"perupez_hp_prod_week"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_prod_week"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_prod_week where pkProdWeek = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkProdWeek];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_prod_week WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    