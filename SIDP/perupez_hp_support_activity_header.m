
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_support_activity_header.h'
    @implementation perupez_hp_support_activity_header
    - (int) set_pkSupportActivityHeader : (NSString *)nuevo_valor{
            self.pkSupportActivityHeader = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkSupportActivityHeader{
            return self.pkSupportActivityHeader;
        }
        
        - (int) set_fkClientCompany : (NSString *)nuevo_valor{
            self.fkClientCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkClientCompany{
            return self.fkClientCompany;
        }
        
        - (int) set_fkPlant : (NSString *)nuevo_valor{
            self.fkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPlant{
            return self.fkPlant;
        }
        
        - (int) set_fkTurn : (NSString *)nuevo_valor{
            self.fkTurn = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkTurn{
            return self.fkTurn;
        }
        
        - (int) set_fkSupportOperation : (NSString *)nuevo_valor{
            self.fkSupportOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSupportOperation{
            return self.fkSupportOperation;
        }
        
        - (int) set_fkMeasureUnit : (NSString *)nuevo_valor{
            self.fkMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMeasureUnit{
            return self.fkMeasureUnit;
        }
        
        - (int) set_lotNumber : (NSString *)nuevo_valor{
            self.lotNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lotNumber{
            return self.lotNumber;
        }
        
        - (int) set_activityDate : (NSString *)nuevo_valor{
            self.activityDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_activityDate{
            return self.activityDate;
        }
        
        - (int) set_quantity : (NSString *)nuevo_valor{
            self.quantity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_quantity{
            return self.quantity;
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
    NSString *cad0 = [self.pkSupportActivityHeader stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkClientCompany];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkPlant];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.fkTurn];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.fkSupportOperation];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.fkMeasureUnit];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.lotNumber];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.activityDate];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.quantity];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:self.registrationDate];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cad10 = [cad9 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad10;int res = [conx Insertar:@"pkSupportActivityHeader,fkClientCompany,fkPlant,fkTurn,fkSupportOperation,fkMeasureUnit,lotNumber,activityDate,quantity,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_support_activity_header" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_support_activity_header SET ";
    NSString *cadtmp0 = [@"pkSupportActivityHeader = '" stringByAppendingString:self.pkSupportActivityHeader];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkClientCompany = '" stringByAppendingString:self.fkClientCompany];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkPlant = '" stringByAppendingString:self.fkPlant];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkTurn = '" stringByAppendingString:self.fkTurn];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkSupportOperation = '" stringByAppendingString:self.fkSupportOperation];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkMeasureUnit = '" stringByAppendingString:self.fkMeasureUnit];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"lotNumber = '" stringByAppendingString:self.lotNumber];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"activityDate = '" stringByAppendingString:self.activityDate];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"quantity = '" stringByAppendingString:self.quantity];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"' "];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadFinal = cad10;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkSupportActivityHeader = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkSupportActivityHeader];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkSupportActivityHeader" valor:self.pkSupportActivityHeader nombreTabla:@"perupez_hp_support_activity_header"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_support_activity_header"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_support_activity_header where pkSupportActivityHeader = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkSupportActivityHeader];
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
	NSString *sql1 = "Select * from perupez_hp_support_activity_header WHERE ";
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
    