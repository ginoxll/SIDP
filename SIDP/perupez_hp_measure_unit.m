
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_measure_unit.h'
    @implementation perupez_hp_measure_unit
    - (int) set_pkMeasureUnit : (NSString *)nuevo_valor{
            self.pkMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkMeasureUnit{
            return self.pkMeasureUnit;
        }
        
        - (int) set_fkMeasureUnitType : (NSString *)nuevo_valor{
            self.fkMeasureUnitType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMeasureUnitType{
            return self.fkMeasureUnitType;
        }
        
        - (int) set_measureUnitName : (NSString *)nuevo_valor{
            self.measureUnitName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_measureUnitName{
            return self.measureUnitName;
        }
        
        - (int) set_measureUnitAcronym : (NSString *)nuevo_valor{
            self.measureUnitAcronym = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_measureUnitAcronym{
            return self.measureUnitAcronym;
        }
        
        - (int) set_baseConversion : (NSString *)nuevo_valor{
            self.baseConversion = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_baseConversion{
            return self.baseConversion;
        }
        
        - (int) set_isBaseUnit : (NSString *)nuevo_valor{
            self.isBaseUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_isBaseUnit{
            return self.isBaseUnit;
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
    NSString *cad0 = [self.pkMeasureUnit stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkMeasureUnitType];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.measureUnitName];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.measureUnitAcronym];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.baseConversion];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.isBaseUnit];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.registrationDate];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cad7 = [cad6 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad7;int res = [conx Insertar:@"pkMeasureUnit,fkMeasureUnitType,measureUnitName,measureUnitAcronym,baseConversion,isBaseUnit,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_measure_unit" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_measure_unit SET ";
    NSString *cadtmp0 = [@"pkMeasureUnit = '" stringByAppendingString:self.pkMeasureUnit];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkMeasureUnitType = '" stringByAppendingString:self.fkMeasureUnitType];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"measureUnitName = '" stringByAppendingString:self.measureUnitName];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"measureUnitAcronym = '" stringByAppendingString:self.measureUnitAcronym];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"baseConversion = '" stringByAppendingString:self.baseConversion];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"isBaseUnit = '" stringByAppendingString:self.isBaseUnit];
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
    NSString *cadBase3 = @" WHERE pkMeasureUnit = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkMeasureUnit];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkMeasureUnit" valor:self.pkMeasureUnit nombreTabla:@"perupez_hp_measure_unit"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_measure_unit"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_measure_unit where pkMeasureUnit = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkMeasureUnit];
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
	NSString *sql1 = "Select * from perupez_hp_measure_unit WHERE ";
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
    