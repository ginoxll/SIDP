
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hrm_company.h"
    @implementation perupez_hrm_company
        - (int) set_pkCompany : (NSString *)nuevo_valor{
            pkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkCompany{
            return pkCompany;
        }
        
        - (int) set_fkSector : (NSString *)nuevo_valor{
            fkSector = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSector{
            return fkSector;
        }
        
        - (int) set_fkCompanyActivity : (NSString *)nuevo_valor{
            fkCompanyActivity = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompanyActivity{
            return fkCompanyActivity;
        }
        
        - (int) set_fkUbigeo : (NSString *)nuevo_valor{
            fkUbigeo = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkUbigeo{
            return fkUbigeo;
        }
        
        - (int) set_ruc : (NSString *)nuevo_valor{
            ruc = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_ruc{
            return ruc;
        }
        
        - (int) set_companyName : (NSString *)nuevo_valor{
            companyName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_companyName{
            return companyName;
        }
        
        - (int) set_companyEmail : (NSString *)nuevo_valor{
            companyEmail = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_companyEmail{
            return companyEmail;
        }
        
        - (int) set_emergencyNumber : (NSString *)nuevo_valor{
            emergencyNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_emergencyNumber{
            return emergencyNumber;
        }
        
        - (int) set_companyAddress : (NSString *)nuevo_valor{
            companyAddress = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_companyAddress{
            return companyAddress;
        }
        
        - (int) set_companyPhoneNumber : (NSString *)nuevo_valor{
            companyPhoneNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_companyPhoneNumber{
            return companyPhoneNumber;
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
    NSString *cad0 = [pkCompany stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkSector];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkCompanyActivity];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkUbigeo];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:ruc];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:companyName];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:companyEmail];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:emergencyNumber];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:companyAddress];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:companyPhoneNumber];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:registrationDate];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cad11 = [cad10 stringByAppendingString:statusRegister];
                NSString *cadsql = cad11;int res = [conx Insertar:@"pkCompany,fkSector,fkCompanyActivity,fkUbigeo,ruc,companyName,companyEmail,emergencyNumber,companyAddress,companyPhoneNumber,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hrm_company" ];
    return res;
    }

- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hrm_company SET ";
    NSString *cadtmp0 = [@"pkCompany = '" stringByAppendingString:pkCompany];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkSector = '" stringByAppendingString:fkSector];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkCompanyActivity = '" stringByAppendingString:fkCompanyActivity];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkUbigeo = '" stringByAppendingString:fkUbigeo];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"ruc = '" stringByAppendingString:ruc];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"companyName = '" stringByAppendingString:companyName];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"companyEmail = '" stringByAppendingString:companyEmail];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"emergencyNumber = '" stringByAppendingString:emergencyNumber];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"companyAddress = '" stringByAppendingString:companyAddress];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"companyPhoneNumber = '" stringByAppendingString:companyPhoneNumber];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
       //         NSString *cadtmp11 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"' "];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadFinal = cad11;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkCompany = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkCompany];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }

    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkCompany" valor:pkCompany nombreTabla:@"perupez_hrm_company"];
	return res;
    }

    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hrm_company"];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW)
        {
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
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }

    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hrm_company where pkCompany = '";
    NSString *cadBase2 = [cadBase1 stringByAppendingString:pkCompany];
    NSString *cadBase3 = @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }

    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_hrm_company WHERE ";
	NSString *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
    while(sqlite3_step(res) == SQLITE_ROW)
    {
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }

- (NSMutableArray*) listCompany
{
    NSMutableArray* list = [NSMutableArray new];
    NSString* query = @"select * from perupez_hrm_company where statusRegister = 1";
    Conexion* objDataBase = [Conexion new];
    
    sqlite3_stmt* result = [objDataBase  sqlLibre:query];
    while(sqlite3_step(result) == SQLITE_ROW)
    {
        perupez_hrm_company* obj = [perupez_hrm_company new];
        [obj set_pkCompany:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 0)]];
        [obj set_ruc:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 4)]];
        [obj set_companyName:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 5)]];
        [obj set_companyAddress:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 8)]];
        [list addObject:obj];
    }
    sqlite3_finalize(result);
    return list;
}

- (NSString*) description
{
    return companyName;
}
@end
    