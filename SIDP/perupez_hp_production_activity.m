
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_production_activity.h"
    @implementation perupez_hp_production_activity
    - (int) set_pkProductionActivity : (NSString *)nuevo_valor{
            pkProductionActivity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkProductionActivity{
            return pkProductionActivity;
        }
        
        - (int) set_fkClientCompany : (NSString *)nuevo_valor{
            fkClientCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkClientCompany{
            return fkClientCompany;
        }
        
        - (int) set_fkPlant : (NSString *)nuevo_valor{
            fkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPlant{
            return fkPlant;
        }
        
        - (int) set_fkTurn : (NSString *)nuevo_valor{
            fkTurn = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkTurn{
            return fkTurn;
        }
        
        - (int) set_fkMeasureUnit : (NSString *)nuevo_valor{
            fkMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMeasureUnit{
            return fkMeasureUnit;
        }
        
        - (int) set_fkOperation : (NSString *)nuevo_valor{
            fkOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkOperation{
            return fkOperation;
        }
        
        - (int) set_fkProduct : (NSString *)nuevo_valor{
            fkProduct = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkProduct{
            return fkProduct;
        }
        
        - (int) set_fkPresentation : (NSString *)nuevo_valor{
            fkPresentation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPresentation{
            return fkPresentation;
        }
        
        - (int) set_lotNumber : (NSString *)nuevo_valor{
            lotNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lotNumber{
            return lotNumber;
        }
        
        - (int) set_activityDate : (NSString *)nuevo_valor{
            activityDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_activityDate{
            return activityDate;
        }
        
        - (int) set_quantity : (NSString *)nuevo_valor{
            quantity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_quantity{
            return quantity;
        }
        
        - (int) set_startupDate : (NSString *)nuevo_valor{
            startupDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_startupDate{
            return startupDate;
        }
        
        - (int) set_finishDate : (NSString *)nuevo_valor{
            finishDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_finishDate{
            return finishDate;
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
    NSString *cad0 = [self.pkProductionActivity stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkClientCompany];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkPlant];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkTurn];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkMeasureUnit];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:fkOperation];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:fkProduct];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:fkPresentation];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:lotNumber];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:activityDate];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:quantity];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:startupDate];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cadtmp12 = [cad11 stringByAppendingString:finishDate];
                NSString *cad12 = [cadtmp12 stringByAppendingString:@","];
                NSString *cadtmp13 = [cad12 stringByAppendingString:registrationDate];
                NSString *cad13 = [cadtmp13 stringByAppendingString:@","];
                NSString *cad14 = [cad13 stringByAppendingString:statusRegister];
                NSString *cadsql = cad14;int res = [conx Insertar:@"pkProductionActivity,fkClientCompany,fkPlant,fkTurn,fkMeasureUnit,fkOperation,fkProduct,fkPresentation,lotNumber,activityDate,quantity,startupDate,finishDate,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_production_activity" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_production_activity SET ";
    NSString *cadtmp0 = [@"pkProductionActivity = '" stringByAppendingString:pkProductionActivity];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkClientCompany = '" stringByAppendingString:fkClientCompany];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkPlant = '" stringByAppendingString:fkPlant];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkTurn = '" stringByAppendingString:fkTurn];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkMeasureUnit = '" stringByAppendingString:fkMeasureUnit];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkOperation = '" stringByAppendingString:fkOperation];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkProduct = '" stringByAppendingString:fkProduct];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkPresentation = '" stringByAppendingString:fkPresentation];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"lotNumber = '" stringByAppendingString:lotNumber];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"activityDate = '" stringByAppendingString:activityDate];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"quantity = '" stringByAppendingString:quantity];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"startupDate = '" stringByAppendingString:startupDate];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"finishDate = '" stringByAppendingString:finishDate];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"',"];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadtmp13 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp113 = [cadtmp13 stringByAppendingString:@"',"];
                NSString *cad13 = [cad12 stringByAppendingString:cadtmp113];
                NSString *cadtmp14 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp114 = [cadtmp14 stringByAppendingString:@"' "];
                NSString *cad14 = [cad13 stringByAppendingString:cadtmp114];
                NSString *cadFinal = cad14;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkProductionActivity = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkProductionActivity];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkProductionActivity" valor:pkProductionActivity nombreTabla:@"perupez_hp_production_activity"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_production_activity"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),sqlite3_column_text(res, 13),sqlite3_column_text(res, 14),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_production_activity where pkProductionActivity = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkProductionActivity];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),sqlite3_column_text(res, 13),sqlite3_column_text(res, 14),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_production_activity WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),sqlite3_column_text(res, 13),sqlite3_column_text(res, 14),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    