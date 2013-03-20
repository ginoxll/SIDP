
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_def_sec_user_company.h"
    @implementation perupez_def_sec_user_company
    - (int) set_pkUserCompany : (NSString *)nuevo_valor{
            pkUserCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkUserCompany{
            return pkUserCompany;
        }
        
        - (int) set_fkUser : (NSString *)nuevo_valor{
            fkUser = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkUser{
            return fkUser;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return fkCompany;
        }
        
        - (int) set_fkPlant : (NSString *)nuevo_valor{
            fkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPlant{
            return fkPlant;
        }
        
        - (int) set_fkTypeUser : (NSString *)nuevo_valor{
            fkTypeUser = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkTypeUser{
            return fkTypeUser;
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
    NSString *cad0 = [pkUserCompany stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkUser];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkCompany];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkPlant];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkTypeUser];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:registrationDate];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cad6 = [cad5 stringByAppendingString:statusRegister];
                NSString *cadsql = cad6;int res = [conx Insertar:@"pkUserCompany,fkUser,fkCompany,fkPlant,fkTypeUser,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_def_sec_user_company" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_sec_user_company SET ";
    NSString *cadtmp0 = [@"pkUserCompany = '" stringByAppendingString:pkUserCompany];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkUser = '" stringByAppendingString:fkUser];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkCompany = '" stringByAppendingString:fkCompany];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkPlant = '" stringByAppendingString:fkPlant];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkTypeUser = '" stringByAppendingString:fkTypeUser];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"' "];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadFinal = cad6;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkUserCompany = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkUserCompany];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkUserCompany" valor:pkUserCompany nombreTabla:@"perupez_def_sec_user_company"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_sec_user_company"];
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
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_def_sec_user_company where pkUserCompany = '";
    NSString *cadBase2 = [cadBase stringByAppendingString:pkUserCompany];
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_def_sec_user_company WHERE ";
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    