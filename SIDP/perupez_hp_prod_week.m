
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_prod_week.h'
    @implementation perupez_hp_prod_week
    - (int) set_pkProdWeek : (NSString *)nuevo_valor{
            self.pkProdWeek = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkProdWeek{
            return self.pkProdWeek;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            self.fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return self.fkCompany;
        }
        
        - (int) set_weekYear : (NSString *)nuevo_valor{
            self.weekYear = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_weekYear{
            return self.weekYear;
        }
        
        - (int) set_weekNumber : (NSString *)nuevo_valor{
            self.weekNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_weekNumber{
            return self.weekNumber;
        }
        
        - (int) set_startDate : (NSString *)nuevo_valor{
            self.startDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_startDate{
            return self.startDate;
        }
        
        - (int) set_endDate : (NSString *)nuevo_valor{
            self.endDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_endDate{
            return self.endDate;
        }
        
        - (int) set_registrationDate : (NSString *)nuevo_valor{
            self.registrationDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_registrationDate{
            return self.registrationDate;
        }
        
        - (int) set_statusRegister : (NSString *)nuevo_valor{
            self.statusRegister = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_statusRegister{
            return self.statusRegister;
        }
        
        - (int) insertDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkProdWeek stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkCompany];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.weekYear];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.weekNumber];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.startDate];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.endDate];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.registrationDate];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cad7 = [cad6 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad7;int res = [conx Insertar:@"pkProdWeek,fkCompany,weekYear,weekNumber,startDate,endDate,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_prod_week" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_prod_week SET ";
    NSString *cadtmp0 = [@"pkProdWeek = '" stringByAppendingString:self.pkProdWeek];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkCompany = '" stringByAppendingString:self.fkCompany];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"weekYear = '" stringByAppendingString:self.weekYear];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"weekNumber = '" stringByAppendingString:self.weekNumber];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"startDate = '" stringByAppendingString:self.startDate];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"endDate = '" stringByAppendingString:self.endDate];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"' "];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadFinal = cad7;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkProdWeek = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkProdWeek];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkProdWeek" valor:self.pkProdWeek nombreTabla:@"perupez_hp_prod_week"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_prod_week"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_hp_prod_week where pkProdWeek = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkProdWeek];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_prod_week WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    