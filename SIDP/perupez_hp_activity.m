
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_activity.h"
    @implementation perupez_hp_activity
    - (int) set_pkActivity : (NSString *)nuevo_valor{
            pkActivity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkActivity{
            return pkActivity;
        }
        
        - (int) set_fkProductionActivity : (NSString *)nuevo_valor{
            fkProductionActivity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkProductionActivity{
            return fkProductionActivity;
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
        
        - (int) set_fkEmployee : (NSString *)nuevo_valor{
            fkEmployee = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkEmployee{
            return fkEmployee;
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
        
        - (int) set_fkMoneyType : (NSString *)nuevo_valor{
            fkMoneyType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMoneyType{
            return fkMoneyType;
        }
        
        - (int) set_fkLastUpdatePerson : (NSString *)nuevo_valor{
            fkLastUpdatePerson = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkLastUpdatePerson{
            return fkLastUpdatePerson;
        }
        
        - (int) set_fkApproverPerson : (NSString *)nuevo_valor{
            fkApproverPerson = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkApproverPerson{
            return fkApproverPerson;
        }
        
        - (int) set_fkPeriod : (NSString *)nuevo_valor{
            fkPeriod = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPeriod{
            return fkPeriod;
        }
        
        - (int) set_fkProdWeek : (NSString *)nuevo_valor{
            fkProdWeek = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkProdWeek{
            return fkProdWeek;
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
        
        - (int) set_quantity : (NSString *)nuevo_valor{
            quantity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_quantity{
            return quantity;
        }
        
        - (int) set_lotNumber : (NSString *)nuevo_valor{
            lotNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lotNumber{
            return lotNumber;
        }
        
        - (int) set_activityCost : (NSString *)nuevo_valor{
            activityCost = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_activityCost{
            return activityCost;
        }
        
        - (int) set_isClosed : (NSString *)nuevo_valor{
            isClosed = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_isClosed{
            return isClosed;
        }
        
        - (int) set_isPaid : (NSString *)nuevo_valor{
            isPaid = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_isPaid{
            return isPaid;
        }
        
        - (int) set_activityObservation : (NSString *)nuevo_valor{
            activityObservation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_activityObservation{
            return activityObservation;
        }
        
        - (int) set_approvingDate : (NSString *)nuevo_valor{
            approvingDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_approvingDate{
            return approvingDate;
        }
        
        - (int) set_registrationDate : (NSString *)nuevo_valor{
            registrationDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_registrationDate{
            return registrationDate;
        }
        
        - (int) set_lastUpdate : (NSString *)nuevo_valor{
            lastUpdate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lastUpdate{
            return lastUpdate;
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
    NSString *cad0 = [self.pkActivity stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkProductionActivity];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkClientCompany];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkPlant];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkEmployee];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:fkTurn];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:fkMeasureUnit];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:fkOperation];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:fkProduct];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:fkPresentation];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:fkMoneyType];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:fkLastUpdatePerson];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cadtmp12 = [cad11 stringByAppendingString:fkApproverPerson];
                NSString *cad12 = [cadtmp12 stringByAppendingString:@","];
                NSString *cadtmp13 = [cad12 stringByAppendingString:fkPeriod];
                NSString *cad13 = [cadtmp13 stringByAppendingString:@","];
                NSString *cadtmp14 = [cad13 stringByAppendingString:fkProdWeek];
                NSString *cad14 = [cadtmp14 stringByAppendingString:@","];
                NSString *cadtmp15 = [cad14 stringByAppendingString:startupDate];
                NSString *cad15 = [cadtmp15 stringByAppendingString:@","];
                NSString *cadtmp16 = [cad15 stringByAppendingString:finishDate];
                NSString *cad16 = [cadtmp16 stringByAppendingString:@","];
                NSString *cadtmp17 = [cad16 stringByAppendingString:quantity];
                NSString *cad17 = [cadtmp17 stringByAppendingString:@","];
                NSString *cadtmp18 = [cad17 stringByAppendingString:lotNumber];
                NSString *cad18 = [cadtmp18 stringByAppendingString:@","];
                NSString *cadtmp19 = [cad18 stringByAppendingString:activityCost];
                NSString *cad19 = [cadtmp19 stringByAppendingString:@","];
                NSString *cadtmp20 = [cad19 stringByAppendingString:isClosed];
                NSString *cad20 = [cadtmp20 stringByAppendingString:@","];
                NSString *cadtmp21 = [cad20 stringByAppendingString:isPaid];
                NSString *cad21 = [cadtmp21 stringByAppendingString:@","];
                NSString *cadtmp22 = [cad21 stringByAppendingString:activityObservation];
                NSString *cad22 = [cadtmp22 stringByAppendingString:@","];
                NSString *cadtmp23 = [cad22 stringByAppendingString:approvingDate];
                NSString *cad23 = [cadtmp23 stringByAppendingString:@","];
                NSString *cadtmp24 = [cad23 stringByAppendingString:registrationDate];
                NSString *cad24 = [cadtmp24 stringByAppendingString:@","];
                NSString *cadtmp25 = [cad24 stringByAppendingString:lastUpdate];
                NSString *cad25 = [cadtmp25 stringByAppendingString:@","];
                NSString *cad26 = [cad25 stringByAppendingString:statusRegister];
                NSString *cadsql = cad26;int res = [conx Insertar:@"pkActivity,fkProductionActivity,fkClientCompany,fkPlant,fkEmployee,fkTurn,fkMeasureUnit,fkOperation,fkProduct,fkPresentation,fkMoneyType,fkLastUpdatePerson,fkApproverPerson,fkPeriod,fkProdWeek,startupDate,finishDate,quantity,lotNumber,activityCost,isClosed,isPaid,activityObservation,approvingDate,registrationDate,lastUpdate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_activity" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_activity SET ";
    NSString *cadtmp0 = [@"pkActivity = '" stringByAppendingString:pkActivity];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkProductionActivity = '" stringByAppendingString:fkProductionActivity];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkClientCompany = '" stringByAppendingString:fkClientCompany];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkPlant = '" stringByAppendingString:fkPlant];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkEmployee = '" stringByAppendingString:fkEmployee];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkTurn = '" stringByAppendingString:fkTurn];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkMeasureUnit = '" stringByAppendingString:fkMeasureUnit];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkOperation = '" stringByAppendingString:fkOperation];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"fkProduct = '" stringByAppendingString:fkProduct];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"fkPresentation = '" stringByAppendingString:fkPresentation];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"fkMoneyType = '" stringByAppendingString:fkMoneyType];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"fkLastUpdatePerson = '" stringByAppendingString:fkLastUpdatePerson];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"fkApproverPerson = '" stringByAppendingString:fkApproverPerson];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"',"];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadtmp13 = [@"fkPeriod = '" stringByAppendingString:fkPeriod];
                NSString *cadtmp113 = [cadtmp13 stringByAppendingString:@"',"];
                NSString *cad13 = [cad12 stringByAppendingString:cadtmp113];
                NSString *cadtmp14 = [@"fkProdWeek = '" stringByAppendingString:fkProdWeek];
                NSString *cadtmp114 = [cadtmp14 stringByAppendingString:@"',"];
                NSString *cad14 = [cad13 stringByAppendingString:cadtmp114];
                NSString *cadtmp15 = [@"startupDate = '" stringByAppendingString:startupDate];
                NSString *cadtmp115 = [cadtmp15 stringByAppendingString:@"',"];
                NSString *cad15 = [cad14 stringByAppendingString:cadtmp115];
                NSString *cadtmp16 = [@"finishDate = '" stringByAppendingString:finishDate];
                NSString *cadtmp116 = [cadtmp16 stringByAppendingString:@"',"];
                NSString *cad16 = [cad15 stringByAppendingString:cadtmp116];
                NSString *cadtmp17 = [@"quantity = '" stringByAppendingString:quantity];
                NSString *cadtmp117 = [cadtmp17 stringByAppendingString:@"',"];
                NSString *cad17 = [cad16 stringByAppendingString:cadtmp117];
                NSString *cadtmp18 = [@"lotNumber = '" stringByAppendingString:lotNumber];
                NSString *cadtmp118 = [cadtmp18 stringByAppendingString:@"',"];
                NSString *cad18 = [cad17 stringByAppendingString:cadtmp118];
                NSString *cadtmp19 = [@"activityCost = '" stringByAppendingString:activityCost];
                NSString *cadtmp119 = [cadtmp19 stringByAppendingString:@"',"];
                NSString *cad19 = [cad18 stringByAppendingString:cadtmp119];
                NSString *cadtmp20 = [@"isClosed = '" stringByAppendingString:isClosed];
                NSString *cadtmp120 = [cadtmp20 stringByAppendingString:@"',"];
                NSString *cad20 = [cad19 stringByAppendingString:cadtmp120];
                NSString *cadtmp21 = [@"isPaid = '" stringByAppendingString:isPaid];
                NSString *cadtmp121 = [cadtmp21 stringByAppendingString:@"',"];
                NSString *cad21 = [cad20 stringByAppendingString:cadtmp121];
                NSString *cadtmp22 = [@"activityObservation = '" stringByAppendingString:activityObservation];
                NSString *cadtmp122 = [cadtmp22 stringByAppendingString:@"',"];
                NSString *cad22 = [cad21 stringByAppendingString:cadtmp122];
                NSString *cadtmp23 = [@"approvingDate = '" stringByAppendingString:approvingDate];
                NSString *cadtmp123 = [cadtmp23 stringByAppendingString:@"',"];
                NSString *cad23 = [cad22 stringByAppendingString:cadtmp123];
                NSString *cadtmp24 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp124 = [cadtmp24 stringByAppendingString:@"',"];
                NSString *cad24 = [cad23 stringByAppendingString:cadtmp124];
                NSString *cadtmp25 = [@"lastUpdate = '" stringByAppendingString:lastUpdate];
                NSString *cadtmp125 = [cadtmp25 stringByAppendingString:@"',"];
                NSString *cad25 = [cad24 stringByAppendingString:cadtmp125];
                NSString *cadtmp26 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp126 = [cadtmp26 stringByAppendingString:@"' "];
                NSString *cad26 = [cad25 stringByAppendingString:cadtmp126];
                NSString *cadFinal = cad26;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkActivity = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkActivity];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkActivity" valor:pkActivity nombreTabla:@"perupez_hp_activity"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_activity"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),sqlite3_column_text(res, 13),sqlite3_column_text(res, 14),sqlite3_column_text(res, 15),sqlite3_column_text(res, 16),sqlite3_column_text(res, 17),sqlite3_column_text(res, 18),sqlite3_column_text(res, 19),sqlite3_column_text(res, 20),sqlite3_column_text(res, 21),sqlite3_column_text(res, 22),sqlite3_column_text(res, 23),sqlite3_column_text(res, 24),sqlite3_column_text(res, 25),sqlite3_column_text(res, 26),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_activity where pkActivity = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkActivity];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),sqlite3_column_text(res, 13),sqlite3_column_text(res, 14),sqlite3_column_text(res, 15),sqlite3_column_text(res, 16),sqlite3_column_text(res, 17),sqlite3_column_text(res, 18),sqlite3_column_text(res, 19),sqlite3_column_text(res, 20),sqlite3_column_text(res, 21),sqlite3_column_text(res, 22),sqlite3_column_text(res, 23),sqlite3_column_text(res, 24),sqlite3_column_text(res, 25),sqlite3_column_text(res, 26),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_activity WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),sqlite3_column_text(res, 13),sqlite3_column_text(res, 14),sqlite3_column_text(res, 15),sqlite3_column_text(res, 16),sqlite3_column_text(res, 17),sqlite3_column_text(res, 18),sqlite3_column_text(res, 19),sqlite3_column_text(res, 20),sqlite3_column_text(res, 21),sqlite3_column_text(res, 22),sqlite3_column_text(res, 23),sqlite3_column_text(res, 24),sqlite3_column_text(res, 25),sqlite3_column_text(res, 26),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    