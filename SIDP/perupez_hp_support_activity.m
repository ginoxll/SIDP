
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_support_activity.h"
    @implementation perupez_hp_support_activity
    - (int) set_pkSupportActivity : (NSString *)nuevo_valor{
            pkSupportActivity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkSupportActivity{
            return pkSupportActivity;
        }
        
        - (int) set_fkSupportActivityHeader : (NSString *)nuevo_valor{
            fkSupportActivityHeader = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSupportActivityHeader{
            return fkSupportActivityHeader;
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
        
        - (int) set_fkOperation : (NSString *)nuevo_valor{
            fkOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkOperation{
            return fkOperation;
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
        
        - (int) set_lotNumber : (NSString *)nuevo_valor{
            lotNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lotNumber{
            return lotNumber;
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
        
        - (int) set_activityCost : (NSString *)nuevo_valor{
            activityCost = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_activityCost{
            return activityCost;
        }
        
        - (int) set_supportActivityDescription : (NSString *)nuevo_valor{
            supportActivityDescription = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_supportActivityDescription{
            return supportActivityDescription;
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
        
        - (int) set_supportActivityObservation : (NSString *)nuevo_valor{
            supportActivityObservation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_supportActivityObservation{
            return supportActivityObservation;
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
    NSString *cad0 = [pkSupportActivity stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkSupportActivityHeader];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkClientCompany];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkPlant];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkEmployee];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:fkTurn];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:fkSupportOperation];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:fkMeasureUnit];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:fkMoneyType];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:fkLastUpdatePerson];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:fkApproverPerson];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:fkOperation];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cadtmp12 = [cad11 stringByAppendingString:fkPeriod];
                NSString *cad12 = [cadtmp12 stringByAppendingString:@","];
                NSString *cadtmp13 = [cad12 stringByAppendingString:fkProdWeek];
                NSString *cad13 = [cadtmp13 stringByAppendingString:@","];
                NSString *cadtmp14 = [cad13 stringByAppendingString:lotNumber];
                NSString *cad14 = [cadtmp14 stringByAppendingString:@","];
                NSString *cadtmp15 = [cad14 stringByAppendingString:startupDate];
                NSString *cad15 = [cadtmp15 stringByAppendingString:@","];
                NSString *cadtmp16 = [cad15 stringByAppendingString:finishDate];
                NSString *cad16 = [cadtmp16 stringByAppendingString:@","];
                NSString *cadtmp17 = [cad16 stringByAppendingString:quantity];
                NSString *cad17 = [cadtmp17 stringByAppendingString:@","];
                NSString *cadtmp18 = [cad17 stringByAppendingString:activityCost];
                NSString *cad18 = [cadtmp18 stringByAppendingString:@","];
                NSString *cadtmp19 = [cad18 stringByAppendingString:supportActivityDescription];
                NSString *cad19 = [cadtmp19 stringByAppendingString:@","];
                NSString *cadtmp20 = [cad19 stringByAppendingString:isClosed];
                NSString *cad20 = [cadtmp20 stringByAppendingString:@","];
                NSString *cadtmp21 = [cad20 stringByAppendingString:isPaid];
                NSString *cad21 = [cadtmp21 stringByAppendingString:@","];
                NSString *cadtmp22 = [cad21 stringByAppendingString:supportActivityObservation];
                NSString *cad22 = [cadtmp22 stringByAppendingString:@","];
                NSString *cadtmp23 = [cad22 stringByAppendingString:approvingDate];
                NSString *cad23 = [cadtmp23 stringByAppendingString:@","];
                NSString *cadtmp24 = [cad23 stringByAppendingString:registrationDate];
                NSString *cad24 = [cadtmp24 stringByAppendingString:@","];
                NSString *cadtmp25 = [cad24 stringByAppendingString:lastUpdate];
                NSString *cad25 = [cadtmp25 stringByAppendingString:@","];
                NSString *cad26 = [cad25 stringByAppendingString:statusRegister];
                NSString *cadsql = cad26;int res = [conx Insertar:@"pkSupportActivity,fkSupportActivityHeader,fkClientCompany,fkPlant,fkEmployee,fkTurn,fkSupportOperation,fkMeasureUnit,fkMoneyType,fkLastUpdatePerson,fkApproverPerson,fkOperation,fkPeriod,fkProdWeek,lotNumber,startupDate,finishDate,quantity,activityCost,supportActivityDescription,isClosed,isPaid,supportActivityObservation,approvingDate,registrationDate,lastUpdate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_support_activity" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_support_activity SET ";
    NSString *cadtmp0 = [@"pkSupportActivity = '" stringByAppendingString:pkSupportActivity];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkSupportActivityHeader = '" stringByAppendingString:fkSupportActivityHeader];
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
                NSString *cadtmp6 = [@"fkSupportOperation = '" stringByAppendingString:fkSupportOperation];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkMeasureUnit = '" stringByAppendingString:fkMeasureUnit];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"fkMoneyType = '" stringByAppendingString:fkMoneyType];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"fkLastUpdatePerson = '" stringByAppendingString:fkLastUpdatePerson];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"fkApproverPerson = '" stringByAppendingString:fkApproverPerson];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"fkOperation = '" stringByAppendingString:fkOperation];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"fkPeriod = '" stringByAppendingString:fkPeriod];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"',"];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadtmp13 = [@"fkProdWeek = '" stringByAppendingString:fkProdWeek];
                NSString *cadtmp113 = [cadtmp13 stringByAppendingString:@"',"];
                NSString *cad13 = [cad12 stringByAppendingString:cadtmp113];
                NSString *cadtmp14 = [@"lotNumber = '" stringByAppendingString:lotNumber];
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
                NSString *cadtmp18 = [@"activityCost = '" stringByAppendingString:activityCost];
                NSString *cadtmp118 = [cadtmp18 stringByAppendingString:@"',"];
                NSString *cad18 = [cad17 stringByAppendingString:cadtmp118];
                NSString *cadtmp19 = [@"supportActivityDescription = '" stringByAppendingString:supportActivityDescription];
                NSString *cadtmp119 = [cadtmp19 stringByAppendingString:@"',"];
                NSString *cad19 = [cad18 stringByAppendingString:cadtmp119];
                NSString *cadtmp20 = [@"isClosed = '" stringByAppendingString:isClosed];
                NSString *cadtmp120 = [cadtmp20 stringByAppendingString:@"',"];
                NSString *cad20 = [cad19 stringByAppendingString:cadtmp120];
                NSString *cadtmp21 = [@"isPaid = '" stringByAppendingString:isPaid];
                NSString *cadtmp121 = [cadtmp21 stringByAppendingString:@"',"];
                NSString *cad21 = [cad20 stringByAppendingString:cadtmp121];
                NSString *cadtmp22 = [@"supportActivityObservation = '" stringByAppendingString:supportActivityObservation];
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
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkSupportActivity = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkSupportActivity];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkSupportActivity" valor:pkSupportActivity nombreTabla:@"perupez_hp_support_activity"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_support_activity"];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
                NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
                NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
                NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
                NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
                NSString *d5 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 5)];
                NSString *d6 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 6)];
                NSString *d7 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 7)];
                NSString *d8 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 8)];
                NSString *d9 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 9)];
                NSString *d10 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 10)];
                NSString *d11 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 11)];
                NSString *d12 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 12)];
                NSString *d13 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 13)];
                NSString *d14 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 14)];
                NSString *d15 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 15)];
                NSString *d16 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 16)];
                NSString *d17 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 17)];
                NSString *d18 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 18)];
                NSString *d19 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 19)];
                NSString *d20 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 20)];
                NSString *d21 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 21)];
                NSString *d22 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 22)];
                NSString *d23 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 23)];
                NSString *d24 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 24)];
                NSString *d25 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 25)];
                NSString *d26 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 26)];
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_support_activity where pkSupportActivity = '";
    NSString *cadBase2 = [cadBase stringByAppendingString:pkSupportActivity];
    NSString *cadBase3 = @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
        NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
        NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
        NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
        NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
        NSString *d5 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 5)];
        NSString *d6 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 6)];
        NSString *d7 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 7)];
        NSString *d8 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 8)];
        NSString *d9 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 9)];
        NSString *d10 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 10)];
        NSString *d11 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 11)];
        NSString *d12 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 12)];
        NSString *d13 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 13)];
        NSString *d14 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 14)];
        NSString *d15 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 15)];
        NSString *d16 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 16)];
        NSString *d17 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 17)];
        NSString *d18 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 18)];
        NSString *d19 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 19)];
        NSString *d20 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 20)];
        NSString *d21 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 21)];
        NSString *d22 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 22)];
        NSString *d23 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 23)];
        NSString *d24 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 24)];
        NSString *d25 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 25)];
        NSString *d26 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 26)];
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_hp_support_activity WHERE ";
	NSString *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
    while(sqlite3_step(res) == SQLITE_ROW){NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
        NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
        NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
        NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
        NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
        NSString *d5 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 5)];
        NSString *d6 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 6)];
        NSString *d7 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 7)];
        NSString *d8 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 8)];
        NSString *d9 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 9)];
        NSString *d10 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 10)];
        NSString *d11 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 11)];
        NSString *d12 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 12)];
        NSString *d13 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 13)];
        NSString *d14 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 14)];
        NSString *d15 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 15)];
        NSString *d16 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 16)];
        NSString *d17 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 17)];
        NSString *d18 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 18)];
        NSString *d19 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 19)];
        NSString *d20 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 20)];
        NSString *d21 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 21)];
        NSString *d22 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 22)];
        NSString *d23 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 23)];
        NSString *d24 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 24)];
        NSString *d25 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 25)];
        NSString *d26 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 26)];
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    