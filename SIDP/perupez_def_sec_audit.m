
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_def_sec_audit.h"
    @implementation perupez_def_sec_audit
    - (int) set_pkAudit : (NSString *)nuevo_valor{
            pkAudit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkAudit{
            return pkAudit;
        }
        
        - (int) set_fkUser : (NSString *)nuevo_valor{
            fkUser = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkUser{
            return fkUser;
        }
        
        - (int) set_fkModule : (NSString *)nuevo_valor{
            fkModule = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkModule{
            return fkModule;
        }
        
        - (int) set_ipPc : (NSString *)nuevo_valor{
            ipPc = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_ipPc{
            return ipPc;
        }
        
        - (int) set_dateTimeOperation : (NSString *)nuevo_valor{
            dateTimeOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_dateTimeOperation{
            return dateTimeOperation;
        }
        
        - (int) set_controller : (NSString *)nuevo_valor{
            controller = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_controller{
            return controller;
        }
        
        - (int) set_action : (NSString *)nuevo_valor{
            action = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_action{
            return action;
        }
        
        - (int) set_yearOperation : (NSString *)nuevo_valor{
            yearOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_yearOperation{
            return yearOperation;
        }
        
        - (int) set_monthOperation : (NSString *)nuevo_valor{
            monthOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_monthOperation{
            return monthOperation;
        }
        
        - (int) set_dateOperation : (NSString *)nuevo_valor{
            dateOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_dateOperation{
            return dateOperation;
        }
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [pkAudit stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkUser];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkModule];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:ipPc];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:dateTimeOperation];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:controller];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:action];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:yearOperation];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:monthOperation];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cad9 = [cad8 stringByAppendingString:dateOperation];
                NSString *cadsql = cad9;int res = [conx Insertar:@"pkAudit,fkUser,fkModule,ipPc,dateTimeOperation,controller,action,yearOperation,monthOperation,dateOperation" valores:cadsql nombreTabla:@"perupez_def_sec_audit" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_sec_audit SET ";
    NSString *cadtmp0 = [@"pkAudit = '" stringByAppendingString:pkAudit];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkUser = '" stringByAppendingString:fkUser];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkModule = '" stringByAppendingString:fkModule];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"ipPc = '" stringByAppendingString:ipPc];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"dateTimeOperation = '" stringByAppendingString:dateTimeOperation];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"controller = '" stringByAppendingString:controller];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"action = '" stringByAppendingString:action];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"yearOperation = '" stringByAppendingString:yearOperation];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"monthOperation = '" stringByAppendingString:monthOperation];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"dateOperation = '" stringByAppendingString:dateOperation];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"' "];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadFinal = cad9;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkAudit = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkAudit];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkAudit" valor:pkAudit nombreTabla:@"perupez_def_sec_audit"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_sec_audit"];
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
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_def_sec_audit where pkAudit = '";
    NSString *cadBase2 = [cadBase stringByAppendingString:pkAudit];
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_def_sec_audit WHERE ";
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    