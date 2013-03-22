
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_turn.h"
    @implementation perupez_hp_turn
    - (int) set_pkTurn : (NSString *)nuevo_valor{
            pkTurn = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkTurn{
            return pkTurn;
        }
        
        - (int) set_turnName : (NSString *)nuevo_valor{
            turnName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_turnName{
            return turnName;
        }
        
        - (int) set_startTime : (NSString *)nuevo_valor{
            startTime = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_startTime{
            return startTime;
        }
        
        - (int) set_finishTime : (NSString *)nuevo_valor{
            finishTime = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_finishTime{
            return finishTime;
        }
        
        - (int) set_turnOrder : (NSString *)nuevo_valor{
            turnOrder = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_turnOrder{
            return turnOrder;
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
    NSString *cad0 = [pkTurn stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:turnName];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:startTime];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:finishTime];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:turnOrder];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:registrationDate];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cad6 = [cad5 stringByAppendingString:statusRegister];
                NSString *cadsql = cad6;int res = [conx Insertar:@"pkTurn,turnName,startTime,finishTime,turnOrder,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_turn" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_turn SET ";
    NSString *cadtmp0 = [@"pkTurn = '" stringByAppendingString:pkTurn];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"turnName = '" stringByAppendingString:turnName];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"startTime = '" stringByAppendingString:startTime];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"finishTime = '" stringByAppendingString:finishTime];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"turnOrder = '" stringByAppendingString:turnOrder];
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
    NSString *cadBase3 = @" WHERE pkTurn = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkTurn];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkTurn" valor:pkTurn nombreTabla:@"perupez_hp_turn"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_turn"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_turn where pkTurn = '";
    NSString *cadBase2 = [cadBase1 stringByAppendingString:pkTurn];
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }

    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_hp_turn WHERE ";
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

+ (NSMutableArray*) listTurn
{
    NSMutableArray* list = [NSMutableArray new];
    NSString* query = @"select * from perupez_hp_turn where statusRegister = 1";
    Conexion* objDataBase = [Conexion new];
    
    sqlite3_stmt* result = [objDataBase  sqlLibre:query];
    while(sqlite3_step(result) == SQLITE_ROW)
    {
        perupez_hp_turn* obj = [perupez_hp_turn new];
        [obj set_pkTurn:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 0)]];
        [obj set_turnName:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 1)]];
        [obj set_startTime:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 2)]];
        [obj set_finishTime:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 3)]];
        [obj set_turnOrder:[NSString stringWithUTF8String:(char *)sqlite3_column_text(result, 4)]];
        [list addObject:obj];
    }
    sqlite3_finalize(result);
    return list;
}

- (NSString*) description
{
    return turnName;
}

    @end
