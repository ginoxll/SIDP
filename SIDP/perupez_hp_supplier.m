
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_supplier.h"
    @implementation perupez_hp_supplier
    - (int) set_pkSupplier : (NSString *)nuevo_valor{
            pkSupplier = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkSupplier{
            return pkSupplier;
        }
        
        - (int) set_supplierName : (NSString *)nuevo_valor{
            supplierName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_supplierName{
            return supplierName;
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
    NSString *cad0 = [pkSupplier stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:supplierName];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:registrationDate];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cad3 = [cad2 stringByAppendingString:statusRegister];
                NSString *cadsql = cad3;int res = [conx Insertar:@"pkSupplier,supplierName,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_supplier" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_supplier SET ";
    NSString *cadtmp0 = [@"pkSupplier = '" stringByAppendingString:pkSupplier];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"supplierName = '" stringByAppendingString:supplierName];
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
    NSString *cadBase3 = @" WHERE pkSupplier = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkSupplier];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkSupplier" valor:pkSupplier nombreTabla:@"perupez_hp_supplier"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_supplier"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_supplier where pkSupplier = '";
    NSString *cadBase2 = [cadBase stringByAppendingString:pkSupplier];
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
	NSString *sql1 = @"Select * from perupez_hp_supplier WHERE ";
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
    