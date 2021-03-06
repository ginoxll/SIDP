
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_plant.h"
    @implementation perupez_hp_plant
    - (int) set_pkPlant : (NSString *)nuevo_valor{
            pkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPlant{
            return pkPlant;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return fkCompany;
        }
        
        - (int) set_fkEstablishmentType : (NSString *)nuevo_valor{
            fkEstablishmentType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkEstablishmentType{
            return fkEstablishmentType;
        }
        
        - (int) set_fkUbigeo : (NSString *)nuevo_valor{
            fkUbigeo = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkUbigeo{
            return fkUbigeo;
        }
        
        - (int) set_sunatCode : (NSString *)nuevo_valor{
            sunatCode = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_sunatCode{
            return sunatCode;
        }
        
        - (int) set_plantName : (NSString *)nuevo_valor{
            plantName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_plantName{
            return plantName;
        }
        
        - (int) set_plantAddress : (NSString *)nuevo_valor{
            plantAddress = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_plantAddress{
            return plantAddress;
        }
        
        - (int) set_plantPhoneNumber : (NSString *)nuevo_valor{
            plantPhoneNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_plantPhoneNumber{
            return plantPhoneNumber;
        }
        
        - (int) set_isRiskCenter : (NSString *)nuevo_valor{
            isRiskCenter = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_isRiskCenter{
            return isRiskCenter;
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

- (NSMutableArray*) getListPlantByCompany:(NSString*)pkCompany
{
    NSString* query = @"select * from perupez_hp_plant where statusRegister = 1 and fkCompany = '";
    query = [[query stringByAppendingString:pkCompany] stringByAppendingString:@"'"];
    Conexion* obj = [Conexion new];
    return [obj getArrayAsociativeOfRecords:query];
}

- (NSMutableDictionary*) getPlant
{
    NSString* query = [[@"select * from perupez_hp_plant where pkPlant='" stringByAppendingString:pkPlant]stringByAppendingString:@"'"];
    Conexion* obj = [Conexion new];
    NSMutableArray* result = [obj getArrayAsociativeOfRecords:query];
    return [result objectAtIndex:0];
}
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [pkPlant stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkCompany];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkEstablishmentType];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkUbigeo];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:sunatCode];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:plantName];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:plantAddress];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:plantPhoneNumber];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:isRiskCenter];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:registrationDate];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cad10 = [cad9 stringByAppendingString:statusRegister];
                NSString *cadsql = cad10;int res = [conx Insertar:@"pkPlant,fkCompany,fkEstablishmentType,fkUbigeo,sunatCode,plantName,plantAddress,plantPhoneNumber,isRiskCenter,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_plant" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_plant SET ";
    NSString *cadtmp0 = [@"pkPlant = '" stringByAppendingString:pkPlant];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkCompany = '" stringByAppendingString:fkCompany];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkEstablishmentType = '" stringByAppendingString:fkEstablishmentType];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkUbigeo = '" stringByAppendingString:fkUbigeo];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"sunatCode = '" stringByAppendingString:sunatCode];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"plantName = '" stringByAppendingString:plantName];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"plantAddress = '" stringByAppendingString:plantAddress];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"plantPhoneNumber = '" stringByAppendingString:plantPhoneNumber];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"isRiskCenter = '" stringByAppendingString:isRiskCenter];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"' "];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadFinal = cad10;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkPlant = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkPlant];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPlant" valor:pkPlant nombreTabla:@"perupez_hp_plant"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_plant"];
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
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_plant where pkPlant = '";
    NSString *cadBase2 = [cadBase1 stringByAppendingString:pkPlant];
    NSString *cadBase3 = @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_hp_plant WHERE ";
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    