
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_turn.h'
    @implementation perupez_hp_turn
    - (int) set_pkTurn : (NSString *)nuevo_valor{
            self.pkTurn = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkTurn{
            return self.pkTurn;
        }
        
        - (int) set_turnName : (NSString *)nuevo_valor{
            self.turnName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_turnName{
            return self.turnName;
        }
        
        - (int) set_startTime : (NSString *)nuevo_valor{
            self.startTime = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_startTime{
            return self.startTime;
        }
        
        - (int) set_finishTime : (NSString *)nuevo_valor{
            self.finishTime = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_finishTime{
            return self.finishTime;
        }
        
        - (int) set_turnOrder : (NSString *)nuevo_valor{
            self.turnOrder = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_turnOrder{
            return self.turnOrder;
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
    NSString *cad0 = [self.pkTurn stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.turnName];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.startTime];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.finishTime];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.turnOrder];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.registrationDate];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cad6 = [cad5 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad6;int res = [conx Insertar:@"pkTurn,turnName,startTime,finishTime,turnOrder,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_turn" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_turn SET ";
    NSString *cadtmp0 = [@"pkTurn = '" stringByAppendingString:self.pkTurn];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"turnName = '" stringByAppendingString:self.turnName];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"startTime = '" stringByAppendingString:self.startTime];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"finishTime = '" stringByAppendingString:self.finishTime];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"turnOrder = '" stringByAppendingString:self.turnOrder];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"' "];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadFinal = cad6;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkTurn = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkTurn];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkTurn" valor:self.pkTurn nombreTabla:@"perupez_hp_turn"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_turn"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_hp_turn where pkTurn = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkTurn];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_turn WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    