
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_def_sec_user.h'
    @implementation perupez_def_sec_user
    - (int) set_pkUser : (NSString *)nuevo_valor{
            self.pkUser = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkUser{
            return self.pkUser;
        }
        
        - (int) set_fkTypeUser : (NSString *)nuevo_valor{
            self.fkTypeUser = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkTypeUser{
            return self.fkTypeUser;
        }
        
        - (int) set_fkPerson : (NSString *)nuevo_valor{
            self.fkPerson = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPerson{
            return self.fkPerson;
        }
        
        - (int) set_lastAccess : (NSString *)nuevo_valor{
            self.lastAccess = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lastAccess{
            return self.lastAccess;
        }
        
        - (int) set_userExpires : (NSString *)nuevo_valor{
            self.userExpires = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_userExpires{
            return self.userExpires;
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
        
        - (int) set_multiSession : (NSString *)nuevo_valor{
            self.multiSession = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_multiSession{
            return self.multiSession;
        }
        
        - (int) set_isLocked : (NSString *)nuevo_valor{
            self.isLocked = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_isLocked{
            return self.isLocked;
        }
        
        - (int) set_unlockTime : (NSString *)nuevo_valor{
            self.unlockTime = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_unlockTime{
            return self.unlockTime;
        }
        
        - (int) set_loginFailures : (NSString *)nuevo_valor{
            self.loginFailures = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_loginFailures{
            return self.loginFailures;
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
    NSString *cad0 = [self.pkUser stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkTypeUser];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkPerson];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.lastAccess];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.userExpires];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.startDate];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.endDate];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.multiSession];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.isLocked];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:self.unlockTime];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:self.loginFailures];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:self.registrationDate];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cad12 = [cad11 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad12;int res = [conx Insertar:@"pkUser,fkTypeUser,fkPerson,lastAccess,userExpires,startDate,endDate,multiSession,isLocked,unlockTime,loginFailures,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_def_sec_user" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_sec_user SET ";
    NSString *cadtmp0 = [@"pkUser = '" stringByAppendingString:self.pkUser];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkTypeUser = '" stringByAppendingString:self.fkTypeUser];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkPerson = '" stringByAppendingString:self.fkPerson];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"lastAccess = '" stringByAppendingString:self.lastAccess];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"userExpires = '" stringByAppendingString:self.userExpires];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"startDate = '" stringByAppendingString:self.startDate];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"endDate = '" stringByAppendingString:self.endDate];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"multiSession = '" stringByAppendingString:self.multiSession];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"isLocked = '" stringByAppendingString:self.isLocked];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"unlockTime = '" stringByAppendingString:self.unlockTime];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"loginFailures = '" stringByAppendingString:self.loginFailures];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"' "];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadFinal = cad12;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkUser = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkUser];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkUser" valor:self.pkUser nombreTabla:@"perupez_def_sec_user"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_sec_user"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_def_sec_user where pkUser = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkUser];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_def_sec_user WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    