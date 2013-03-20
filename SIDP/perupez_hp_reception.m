
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_reception.h"
    @implementation perupez_hp_reception
    - (int) set_pkReception : (NSString *)nuevo_valor{
            pkReception = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkReception{
            return pkReception;
        }
        
        - (int) set_fkRawMaterial : (NSString *)nuevo_valor{
            fkRawMaterial = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkRawMaterial{
            return fkRawMaterial;
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
        
        - (int) set_fkVehicle : (NSString *)nuevo_valor{
            fkVehicle = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkVehicle{
            return fkVehicle;
        }
        
        - (int) set_fkSupplier : (NSString *)nuevo_valor{
            fkSupplier = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSupplier{
            return fkSupplier;
        }
        
        - (int) set_fkReceptionSource : (NSString *)nuevo_valor{
            fkReceptionSource = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkReceptionSource{
            return fkReceptionSource;
        }
        
        - (int) set_fkPackMeasureUnit : (NSString *)nuevo_valor{
            fkPackMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPackMeasureUnit{
            return fkPackMeasureUnit;
        }
        
        - (int) set_fkWeightMeasureUnit : (NSString *)nuevo_valor{
            fkWeightMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkWeightMeasureUnit{
            return fkWeightMeasureUnit;
        }
        
        - (int) set_fkPropietaryCompany : (NSString *)nuevo_valor{
            fkPropietaryCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPropietaryCompany{
            return fkPropietaryCompany;
        }
        
        - (int) set_lotNumber : (NSString *)nuevo_valor{
            lotNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lotNumber{
            return lotNumber;
        }
        
        - (int) set_receptionDate : (NSString *)nuevo_valor{
            receptionDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_receptionDate{
            return receptionDate;
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
        
        - (int) set_totalWeight : (NSString *)nuevo_valor{
            totalWeight = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_totalWeight{
            return totalWeight;
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
    NSString *cad0 = [pkReception stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkRawMaterial];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkProduct];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkPresentation];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkPlant];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:fkTurn];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:fkVehicle];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:fkSupplier];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:fkReceptionSource];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:fkPackMeasureUnit];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:fkWeightMeasureUnit];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:fkPropietaryCompany];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cadtmp12 = [cad11 stringByAppendingString:lotNumber];
                NSString *cad12 = [cadtmp12 stringByAppendingString:@","];
                NSString *cadtmp13 = [cad12 stringByAppendingString:receptionDate];
                NSString *cad13 = [cadtmp13 stringByAppendingString:@","];
                NSString *cadtmp14 = [cad13 stringByAppendingString:startupDate];
                NSString *cad14 = [cadtmp14 stringByAppendingString:@","];
                NSString *cadtmp15 = [cad14 stringByAppendingString:finishDate];
                NSString *cad15 = [cadtmp15 stringByAppendingString:@","];
                NSString *cadtmp16 = [cad15 stringByAppendingString:totalWeight];
                NSString *cad16 = [cadtmp16 stringByAppendingString:@","];
                NSString *cadtmp17 = [cad16 stringByAppendingString:registrationDate];
                NSString *cad17 = [cadtmp17 stringByAppendingString:@","];
                NSString *cad18 = [cad17 stringByAppendingString:statusRegister];
                NSString *cadsql = cad18;int res = [conx Insertar:@"pkReception,fkRawMaterial,fkProduct,fkPresentation,fkPlant,fkTurn,fkVehicle,fkSupplier,fkReceptionSource,fkPackMeasureUnit,fkWeightMeasureUnit,fkPropietaryCompany,lotNumber,receptionDate,startupDate,finishDate,totalWeight,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_reception" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_reception SET ";
    NSString *cadtmp0 = [@"pkReception = '" stringByAppendingString:pkReception];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkRawMaterial = '" stringByAppendingString:fkRawMaterial];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkProduct = '" stringByAppendingString:fkProduct];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkPresentation = '" stringByAppendingString:fkPresentation];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkPlant = '" stringByAppendingString:fkPlant];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkTurn = '" stringByAppendingString:fkTurn];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkVehicle = '" stringByAppendingString:fkVehicle];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkSupplier = '" stringByAppendingString:fkSupplier];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"fkReceptionSource = '" stringByAppendingString:fkReceptionSource];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"fkPackMeasureUnit = '" stringByAppendingString:fkPackMeasureUnit];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"fkWeightMeasureUnit = '" stringByAppendingString:fkWeightMeasureUnit];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"fkPropietaryCompany = '" stringByAppendingString:fkPropietaryCompany];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"lotNumber = '" stringByAppendingString:lotNumber];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"',"];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadtmp13 = [@"receptionDate = '" stringByAppendingString:receptionDate];
                NSString *cadtmp113 = [cadtmp13 stringByAppendingString:@"',"];
                NSString *cad13 = [cad12 stringByAppendingString:cadtmp113];
                NSString *cadtmp14 = [@"startupDate = '" stringByAppendingString:startupDate];
                NSString *cadtmp114 = [cadtmp14 stringByAppendingString:@"',"];
                NSString *cad14 = [cad13 stringByAppendingString:cadtmp114];
                NSString *cadtmp15 = [@"finishDate = '" stringByAppendingString:finishDate];
                NSString *cadtmp115 = [cadtmp15 stringByAppendingString:@"',"];
                NSString *cad15 = [cad14 stringByAppendingString:cadtmp115];
                NSString *cadtmp16 = [@"totalWeight = '" stringByAppendingString:totalWeight];
                NSString *cadtmp116 = [cadtmp16 stringByAppendingString:@"',"];
                NSString *cad16 = [cad15 stringByAppendingString:cadtmp116];
                NSString *cadtmp17 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp117 = [cadtmp17 stringByAppendingString:@"',"];
                NSString *cad17 = [cad16 stringByAppendingString:cadtmp117];
                NSString *cadtmp18 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp118 = [cadtmp18 stringByAppendingString:@"' "];
                NSString *cad18 = [cad17 stringByAppendingString:cadtmp118];
                NSString *cadFinal = cad18;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkReception = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkReception];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkReception" valor:pkReception nombreTabla:@"perupez_hp_reception"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_reception"];
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
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_reception where pkReception = '";
    NSString *cadBase2 = [cadBase stringByAppendingString:pkReception];
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_hp_reception WHERE ";
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    