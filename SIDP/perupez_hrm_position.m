
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hrm_position.h"
    @implementation perupez_hrm_position
    - (int) set_pkPosition : (NSString *)nuevo_valor{
            pkPosition = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPosition{
            return pkPosition;
        }
        
        - (int) set_positionName : (NSString *)nuevo_valor{
            positionName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_positionName{
            return positionName;
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
    NSString *cad0 = [pkPosition stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:positionName];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:registrationDate];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cad3 = [cad2 stringByAppendingString:statusRegister];
                NSString *cadsql = cad3;int res = [conx Insertar:@"pkPosition,positionName,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hrm_position" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hrm_position SET ";
    NSString *cadtmp0 = [@"pkPosition = '" stringByAppendingString:pkPosition];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"positionName = '" stringByAppendingString:positionName];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"' "];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadFinal = cad3;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkPosition = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkPosition];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPosition" valor:pkPosition nombreTabla:@"perupez_hrm_position"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hrm_position"];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
                NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
                NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
                NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hrm_position where pkPosition = '";
    NSString *cadBase2 = [cadBase stringByAppendingString:pkPosition];
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_hrm_position WHERE ";
	NSString *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
    while(sqlite3_step(res) == SQLITE_ROW){NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
        NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
        NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
        NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    