
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_supplier_raw_material.h'
    @implementation perupez_hp_supplier_raw_material
    - (int) set_pkSupplierRawMaterial : (NSString *)nuevo_valor{
            self.pkSupplierRawMaterial = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkSupplierRawMaterial{
            return self.pkSupplierRawMaterial;
        }
        
        - (int) set_fkSupplier : (NSString *)nuevo_valor{
            self.fkSupplier = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSupplier{
            return self.fkSupplier;
        }
        
        - (int) set_fkRawMaterial : (NSString *)nuevo_valor{
            self.fkRawMaterial = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkRawMaterial{
            return self.fkRawMaterial;
        }
        
        - (int) set_registrationDate : (NSString *)nuevo_valor{
            self.registrationDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_registrationDate{
            return self.registrationDate;
        }
        
        - (int) set_statusRegister : (NSString *)nuevo_valor{
            self.statusRegister = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_statusRegister{
            return self.statusRegister;
        }
        
        - (int) insertDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkSupplierRawMaterial stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkSupplier];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkRawMaterial];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.registrationDate];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cad4 = [cad3 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad4;int res = [conx Insertar:@"pkSupplierRawMaterial,fkSupplier,fkRawMaterial,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_supplier_raw_material" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_supplier_raw_material SET ";
    NSString *cadtmp0 = [@"pkSupplierRawMaterial = '" stringByAppendingString:self.pkSupplierRawMaterial];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkSupplier = '" stringByAppendingString:self.fkSupplier];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkRawMaterial = '" stringByAppendingString:self.fkRawMaterial];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"' "];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadFinal = cad4;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkSupplierRawMaterial = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkSupplierRawMaterial];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkSupplierRawMaterial" valor:self.pkSupplierRawMaterial nombreTabla:@"perupez_hp_supplier_raw_material"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_supplier_raw_material"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_hp_supplier_raw_material where pkSupplierRawMaterial = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkSupplierRawMaterial];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_supplier_raw_material WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    