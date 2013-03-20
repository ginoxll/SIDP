
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_support_operation_cost.h"
    @implementation perupez_hp_support_operation_cost
    - (int) set_pkSupportOperationCost : (NSString *)nuevo_valor{
            pkSupportOperationCost = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkSupportOperationCost{
            return pkSupportOperationCost;
        }
        
        - (int) set_fkPlant : (NSString *)nuevo_valor{
            fkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPlant{
            return fkPlant;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return fkCompany;
        }
        
        - (int) set_fkSupportOperation : (NSString *)nuevo_valor{
            fkSupportOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSupportOperation{
            return fkSupportOperation;
        }
        
        - (int) set_fkMeasureUnit : (NSString *)nuevo_valor{
            fkMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMeasureUnit{
            return fkMeasureUnit;
        }
        
        - (int) set_fkMoneyType : (NSString *)nuevo_valor{
            fkMoneyType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMoneyType{
            return fkMoneyType;
        }
        
        - (int) set_supportOperationCost : (NSString *)nuevo_valor{
            supportOperationCost = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_supportOperationCost{
            return supportOperationCost;
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
    NSString *cad0 = [self.pkSupportOperationCost stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkPlant];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkCompany];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkSupportOperation];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkMeasureUnit];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:fkMoneyType];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:supportOperationCost];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:registrationDate];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cad8 = [cad7 stringByAppendingString:statusRegister];
                NSString *cadsql = cad8;int res = [conx Insertar:@"pkSupportOperationCost,fkPlant,fkCompany,fkSupportOperation,fkMeasureUnit,fkMoneyType,supportOperationCost,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_support_operation_cost" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_support_operation_cost SET ";
    NSString *cadtmp0 = [@"pkSupportOperationCost = '" stringByAppendingString:pkSupportOperationCost];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkPlant = '" stringByAppendingString:fkPlant];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkCompany = '" stringByAppendingString:fkCompany];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkSupportOperation = '" stringByAppendingString:fkSupportOperation];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkMeasureUnit = '" stringByAppendingString:fkMeasureUnit];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkMoneyType = '" stringByAppendingString:fkMoneyType];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"supportOperationCost = '" stringByAppendingString:supportOperationCost];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"' "];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadFinal = cad8;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkSupportOperationCost = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkSupportOperationCost];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkSupportOperationCost" valor:pkSupportOperationCost nombreTabla:@"perupez_hp_support_operation_cost"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_support_operation_cost"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_support_operation_cost where pkSupportOperationCost = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkSupportOperationCost];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_support_operation_cost WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    