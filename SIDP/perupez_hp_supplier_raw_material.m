
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_supplier_raw_material.h"
    @implementation perupez_hp_supplier_raw_material
    - (int) set_pkSupplierRawMaterial : (NSString *)nuevo_valor{
            pkSupplierRawMaterial = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkSupplierRawMaterial{
            return pkSupplierRawMaterial;
        }
        
        - (int) set_fkSupplier : (NSString *)nuevo_valor{
            fkSupplier = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSupplier{
            return fkSupplier;
        }
        
        - (int) set_fkRawMaterial : (NSString *)nuevo_valor{
            fkRawMaterial = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkRawMaterial{
            return fkRawMaterial;
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
    NSString *cad0 = [pkSupplierRawMaterial stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkSupplier];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkRawMaterial];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:registrationDate];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cad4 = [cad3 stringByAppendingString:statusRegister];
                NSString *cadsql = cad4;int res = [conx Insertar:@"pkSupplierRawMaterial,fkSupplier,fkRawMaterial,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_supplier_raw_material" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_supplier_raw_material SET ";
    NSString *cadtmp0 = [@"pkSupplierRawMaterial = '" stringByAppendingString:pkSupplierRawMaterial];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkSupplier = '" stringByAppendingString:fkSupplier];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkRawMaterial = '" stringByAppendingString:fkRawMaterial];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"' "];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadFinal = cad4;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkSupplierRawMaterial = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkSupplierRawMaterial];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkSupplierRawMaterial" valor:pkSupplierRawMaterial nombreTabla:@"perupez_hp_supplier_raw_material"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_supplier_raw_material"];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
                NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
                NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
                NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
                NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_supplier_raw_material where pkSupplierRawMaterial = '";
    NSString *cadBase2 = [cadBase1 stringByAppendingString:pkSupplierRawMaterial];
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
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_hp_supplier_raw_material WHERE ";
	NSString *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
    while(sqlite3_step(res) == SQLITE_ROW){NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
        NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
        NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
        NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
        NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    