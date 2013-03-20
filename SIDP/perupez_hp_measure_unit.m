
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_measure_unit.h"
    @implementation perupez_hp_measure_unit
    - (int) set_pkMeasureUnit : (NSString *)nuevo_valor{
            pkMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkMeasureUnit{
            return pkMeasureUnit;
        }
        
        - (int) set_fkMeasureUnitType : (NSString *)nuevo_valor{
            fkMeasureUnitType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMeasureUnitType{
            return fkMeasureUnitType;
        }
        
        - (int) set_measureUnitName : (NSString *)nuevo_valor{
            measureUnitName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_measureUnitName{
            return measureUnitName;
        }
        
        - (int) set_measureUnitAcronym : (NSString *)nuevo_valor{
            measureUnitAcronym = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_measureUnitAcronym{
            return measureUnitAcronym;
        }
        
        - (int) set_baseConversion : (NSString *)nuevo_valor{
            baseConversion = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_baseConversion{
            return baseConversion;
        }
        
        - (int) set_isBaseUnit : (NSString *)nuevo_valor{
            isBaseUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_isBaseUnit{
            return isBaseUnit;
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
    NSString *cad0 = [self.pkMeasureUnit stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkMeasureUnitType];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:measureUnitName];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:measureUnitAcronym];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:baseConversion];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:isBaseUnit];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:registrationDate];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cad7 = [cad6 stringByAppendingString:statusRegister];
                NSString *cadsql = cad7;int res = [conx Insertar:@"pkMeasureUnit,fkMeasureUnitType,measureUnitName,measureUnitAcronym,baseConversion,isBaseUnit,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_measure_unit" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_measure_unit SET ";
    NSString *cadtmp0 = [@"pkMeasureUnit = '" stringByAppendingString:pkMeasureUnit];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkMeasureUnitType = '" stringByAppendingString:fkMeasureUnitType];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"measureUnitName = '" stringByAppendingString:measureUnitName];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"measureUnitAcronym = '" stringByAppendingString:measureUnitAcronym];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"baseConversion = '" stringByAppendingString:baseConversion];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"isBaseUnit = '" stringByAppendingString:isBaseUnit];
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
    NSString *cadBase3 = @" WHERE pkMeasureUnit = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkMeasureUnit];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkMeasureUnit" valor:pkMeasureUnit nombreTabla:@"perupez_hp_measure_unit"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_measure_unit"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_measure_unit where pkMeasureUnit = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkMeasureUnit];
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
	NSString *sql1 = "Select * from perupez_hp_measure_unit WHERE ";
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
    