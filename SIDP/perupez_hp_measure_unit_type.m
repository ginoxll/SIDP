
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_measure_unit_type.h"
    @implementation perupez_hp_measure_unit_type
    - (int) set_pkMeasureUnitType : (NSString *)nuevo_valor{
            pkMeasureUnitType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkMeasureUnitType{
            return pkMeasureUnitType;
        }
        
        - (int) set_measureUnitTypeName : (NSString *)nuevo_valor{
            measureUnitTypeName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_measureUnitTypeName{
            return measureUnitTypeName;
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
    NSString *cad0 = [self.pkMeasureUnitType stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:measureUnitTypeName];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:registrationDate];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cad3 = [cad2 stringByAppendingString:statusRegister];
                NSString *cadsql = cad3;int res = [conx Insertar:@"pkMeasureUnitType,measureUnitTypeName,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_measure_unit_type" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_measure_unit_type SET ";
    NSString *cadtmp0 = [@"pkMeasureUnitType = '" stringByAppendingString:pkMeasureUnitType];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"measureUnitTypeName = '" stringByAppendingString:measureUnitTypeName];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"' "];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadFinal = cad3;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkMeasureUnitType = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkMeasureUnitType];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkMeasureUnitType" valor:pkMeasureUnitType nombreTabla:@"perupez_hp_measure_unit_type"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_measure_unit_type"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_measure_unit_type where pkMeasureUnitType = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkMeasureUnitType];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_measure_unit_type WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    