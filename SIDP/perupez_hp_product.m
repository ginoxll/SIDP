
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_product.h'
    @implementation perupez_hp_product
    - (int) set_pkProduct : (NSString *)nuevo_valor{
            self.pkProduct = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkProduct{
            return self.pkProduct;
        }
        
        - (int) set_fkRawMaterial : (NSString *)nuevo_valor{
            self.fkRawMaterial = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkRawMaterial{
            return self.fkRawMaterial;
        }
        
        - (int) set_productDescription : (NSString *)nuevo_valor{
            self.productDescription = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_productDescription{
            return self.productDescription;
        }
        
        - (int) set_yieldPercent : (NSString *)nuevo_valor{
            self.yieldPercent = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_yieldPercent{
            return self.yieldPercent;
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
    NSString *cad0 = [self.pkProduct stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkRawMaterial];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.productDescription];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.yieldPercent];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.registrationDate];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cad5 = [cad4 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad5;int res = [conx Insertar:@"pkProduct,fkRawMaterial,productDescription,yieldPercent,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_product" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_product SET ";
    NSString *cadtmp0 = [@"pkProduct = '" stringByAppendingString:self.pkProduct];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkRawMaterial = '" stringByAppendingString:self.fkRawMaterial];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"productDescription = '" stringByAppendingString:self.productDescription];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"yieldPercent = '" stringByAppendingString:self.yieldPercent];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"' "];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadFinal = cad5;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkProduct = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkProduct];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkProduct" valor:self.pkProduct nombreTabla:@"perupez_hp_product"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_product"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_hp_product where pkProduct = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkProduct];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_product WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    