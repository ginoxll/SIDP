
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_plant.h'
    @implementation perupez_hp_plant
    - (int) set_pkPlant : (NSString *)nuevo_valor{
            self.pkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPlant{
            return self.pkPlant;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            self.fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return self.fkCompany;
        }
        
        - (int) set_fkEstablishmentType : (NSString *)nuevo_valor{
            self.fkEstablishmentType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkEstablishmentType{
            return self.fkEstablishmentType;
        }
        
        - (int) set_fkUbigeo : (NSString *)nuevo_valor{
            self.fkUbigeo = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkUbigeo{
            return self.fkUbigeo;
        }
        
        - (int) set_sunatCode : (NSString *)nuevo_valor{
            self.sunatCode = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_sunatCode{
            return self.sunatCode;
        }
        
        - (int) set_plantName : (NSString *)nuevo_valor{
            self.plantName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_plantName{
            return self.plantName;
        }
        
        - (int) set_plantAddress : (NSString *)nuevo_valor{
            self.plantAddress = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_plantAddress{
            return self.plantAddress;
        }
        
        - (int) set_plantPhoneNumber : (NSString *)nuevo_valor{
            self.plantPhoneNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_plantPhoneNumber{
            return self.plantPhoneNumber;
        }
        
        - (int) set_isRiskCenter : (NSString *)nuevo_valor{
            self.isRiskCenter = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_isRiskCenter{
            return self.isRiskCenter;
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
    NSString *cad0 = [self.pkPlant stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkCompany];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkEstablishmentType];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.fkUbigeo];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.sunatCode];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.plantName];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.plantAddress];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.plantPhoneNumber];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.isRiskCenter];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:self.registrationDate];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cad10 = [cad9 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad10;int res = [conx Insertar:@"pkPlant,fkCompany,fkEstablishmentType,fkUbigeo,sunatCode,plantName,plantAddress,plantPhoneNumber,isRiskCenter,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_plant" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_plant SET ";
    NSString *cadtmp0 = [@"pkPlant = '" stringByAppendingString:self.pkPlant];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkCompany = '" stringByAppendingString:self.fkCompany];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkEstablishmentType = '" stringByAppendingString:self.fkEstablishmentType];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkUbigeo = '" stringByAppendingString:self.fkUbigeo];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"sunatCode = '" stringByAppendingString:self.sunatCode];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"plantName = '" stringByAppendingString:self.plantName];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"plantAddress = '" stringByAppendingString:self.plantAddress];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"plantPhoneNumber = '" stringByAppendingString:self.plantPhoneNumber];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"isRiskCenter = '" stringByAppendingString:self.isRiskCenter];
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
    NSString *cadBase3 = @" WHERE pkPlant = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkPlant];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPlant" valor:self.pkPlant nombreTabla:@"perupez_hp_plant"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_plant"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_plant where pkPlant = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkPlant];
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
	NSString *sql1 = "Select * from perupez_hp_plant WHERE ";
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
    