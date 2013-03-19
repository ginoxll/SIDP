
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_def_sec_module.h'
    @implementation perupez_def_sec_module
    - (int) set_pkModule : (NSString *)nuevo_valor{
            self.pkModule = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkModule{
            return self.pkModule;
        }
        
        - (int) set_fkSystem : (NSString *)nuevo_valor{
            self.fkSystem = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSystem{
            return self.fkSystem;
        }
        
        - (int) set_nameModule : (NSString *)nuevo_valor{
            self.nameModule = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_nameModule{
            return self.nameModule;
        }
        
        - (int) set_nameTable : (NSString *)nuevo_valor{
            self.nameTable = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_nameTable{
            return self.nameTable;
        }
        
        - (int) set_showInterface : (NSString *)nuevo_valor{
            self.showInterface = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_showInterface{
            return self.showInterface;
        }
        
        - (int) insertDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkModule stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkSystem];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.nameModule];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.nameTable];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cad4 = [cad3 stringByAppendingString:self.showInterface];
                NSString *cadsql = cad4;int res = [conx Insertar:@"pkModule,fkSystem,nameModule,nameTable,showInterface" valores:cadsql nombreTabla:@"perupez_def_sec_module" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_sec_module SET ";
    NSString *cadtmp0 = [@"pkModule = '" stringByAppendingString:self.pkModule];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkSystem = '" stringByAppendingString:self.fkSystem];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"nameModule = '" stringByAppendingString:self.nameModule];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"nameTable = '" stringByAppendingString:self.nameTable];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"showInterface = '" stringByAppendingString:self.showInterface];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"' "];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadFinal = cad4;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkModule = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkModule];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkModule" valor:self.pkModule nombreTabla:@"perupez_def_sec_module"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_sec_module"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_def_sec_module where pkModule = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkModule];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_def_sec_module WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    