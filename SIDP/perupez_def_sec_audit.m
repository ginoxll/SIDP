
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_def_sec_audit.h'
    @implementation perupez_def_sec_audit
    - (int) set_pkAudit : (NSString *)nuevo_valor{
            self.pkAudit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkAudit{
            return self.pkAudit;
        }
        
        - (int) set_fkUser : (NSString *)nuevo_valor{
            self.fkUser = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkUser{
            return self.fkUser;
        }
        
        - (int) set_fkModule : (NSString *)nuevo_valor{
            self.fkModule = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkModule{
            return self.fkModule;
        }
        
        - (int) set_ipPc : (NSString *)nuevo_valor{
            self.ipPc = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_ipPc{
            return self.ipPc;
        }
        
        - (int) set_dateTimeOperation : (NSString *)nuevo_valor{
            self.dateTimeOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_dateTimeOperation{
            return self.dateTimeOperation;
        }
        
        - (int) set_controller : (NSString *)nuevo_valor{
            self.controller = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_controller{
            return self.controller;
        }
        
        - (int) set_action : (NSString *)nuevo_valor{
            self.action = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_action{
            return self.action;
        }
        
        - (int) set_yearOperation : (NSString *)nuevo_valor{
            self.yearOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_yearOperation{
            return self.yearOperation;
        }
        
        - (int) set_monthOperation : (NSString *)nuevo_valor{
            self.monthOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_monthOperation{
            return self.monthOperation;
        }
        
        - (int) set_dateOperation : (NSString *)nuevo_valor{
            self.dateOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_dateOperation{
            return self.dateOperation;
        }
        
        - (int) insertDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkAudit stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkUser];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkModule];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.ipPc];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.dateTimeOperation];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.controller];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.action];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.yearOperation];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.monthOperation];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cad9 = [cad8 stringByAppendingString:self.dateOperation];
                NSString *cadsql = cad9;int res = [conx Insertar:@"pkAudit,fkUser,fkModule,ipPc,dateTimeOperation,controller,action,yearOperation,monthOperation,dateOperation" valores:cadsql nombreTabla:@"perupez_def_sec_audit" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_sec_audit SET ";
    NSString *cadtmp0 = [@"pkAudit = '" stringByAppendingString:self.pkAudit];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkUser = '" stringByAppendingString:self.fkUser];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkModule = '" stringByAppendingString:self.fkModule];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"ipPc = '" stringByAppendingString:self.ipPc];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"dateTimeOperation = '" stringByAppendingString:self.dateTimeOperation];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"controller = '" stringByAppendingString:self.controller];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"action = '" stringByAppendingString:self.action];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"yearOperation = '" stringByAppendingString:self.yearOperation];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"monthOperation = '" stringByAppendingString:self.monthOperation];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"dateOperation = '" stringByAppendingString:self.dateOperation];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"' "];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadFinal = cad9;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkAudit = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkAudit];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkAudit" valor:self.pkAudit nombreTabla:@"perupez_def_sec_audit"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_sec_audit"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_def_sec_audit where pkAudit = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkAudit];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_def_sec_audit WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    