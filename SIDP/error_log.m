
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import 'error_log.h'
    @implementation error_log
    - (int) set_pkError : (NSString *)nuevo_valor{
            self.pkError = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkError{
            return self.pkError;
        }
        
        - (int) set_ip : (NSString *)nuevo_valor{
            self.ip = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_ip{
            return self.ip;
        }
        
        - (int) set_dateTime : (NSString *)nuevo_valor{
            self.dateTime = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_dateTime{
            return self.dateTime;
        }
        
        - (int) set_description : (NSString *)nuevo_valor{
            self.description = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_description{
            return self.description;
        }
        
        - (int) set_tracer : (NSString *)nuevo_valor{
            self.tracer = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_tracer{
            return self.tracer;
        }
        
        - (int) set_module : (NSString *)nuevo_valor{
            self.module = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_module{
            return self.module;
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
        
        - (int) set_url : (NSString *)nuevo_valor{
            self.url = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_url{
            return self.url;
        }
        
        - (int) set_user : (NSString *)nuevo_valor{
            self.user = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_user{
            return self.user;
        }
        
        - (int) set_state : (NSString *)nuevo_valor{
            self.state = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_state{
            return self.state;
        }
        
        - (int) insertDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkError stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.ip];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.dateTime];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.description];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.tracer];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.module];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.controller];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.action];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.url];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:self.user];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cad10 = [cad9 stringByAppendingString:self.state];
                NSString *cadsql = cad10;int res = [conx Insertar:@"pkError,ip,dateTime,description,tracer,module,controller,action,url,user,state" valores:cadsql nombreTabla:@"error_log" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE error_log SET ";
    NSString *cadtmp0 = [@"pkError = '" stringByAppendingString:self.pkError];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"ip = '" stringByAppendingString:self.ip];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"dateTime = '" stringByAppendingString:self.dateTime];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"description = '" stringByAppendingString:self.description];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"tracer = '" stringByAppendingString:self.tracer];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"module = '" stringByAppendingString:self.module];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"controller = '" stringByAppendingString:self.controller];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"action = '" stringByAppendingString:self.action];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"url = '" stringByAppendingString:self.url];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"user = '" stringByAppendingString:self.user];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"state = '" stringByAppendingString:self.state];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"' "];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadFinal = cad10;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkError = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkError];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkError" valor:self.pkError nombreTabla:@"error_log"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"error_log"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from error_log where pkError = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkError];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from error_log WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    