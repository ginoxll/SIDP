
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_presentation_plant.h'
    @implementation perupez_hp_presentation_plant
    - (int) set_pkPresentationPlant : (NSString *)nuevo_valor{
            self.pkPresentationPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPresentationPlant{
            return self.pkPresentationPlant;
        }
        
        - (int) set_fkProduct : (NSString *)nuevo_valor{
            self.fkProduct = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkProduct{
            return self.fkProduct;
        }
        
        - (int) set_fkPresentation : (NSString *)nuevo_valor{
            self.fkPresentation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPresentation{
            return self.fkPresentation;
        }
        
        - (int) set_fkPlant : (NSString *)nuevo_valor{
            self.fkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPlant{
            return self.fkPlant;
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
    NSString *cad0 = [self.pkPresentationPlant stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkProduct];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkPresentation];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.fkPlant];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.registrationDate];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cad5 = [cad4 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad5;int res = [conx Insertar:@"pkPresentationPlant,fkProduct,fkPresentation,fkPlant,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_presentation_plant" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_presentation_plant SET ";
    NSString *cadtmp0 = [@"pkPresentationPlant = '" stringByAppendingString:self.pkPresentationPlant];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkProduct = '" stringByAppendingString:self.fkProduct];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkPresentation = '" stringByAppendingString:self.fkPresentation];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkPlant = '" stringByAppendingString:self.fkPlant];
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
    NSString *cadBase3 = @" WHERE pkPresentationPlant = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkPresentationPlant];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPresentationPlant" valor:self.pkPresentationPlant nombreTabla:@"perupez_hp_presentation_plant"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_presentation_plant"];
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
    NSString *cadBase1 = @"Select * from perupez_hp_presentation_plant where pkPresentationPlant = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkPresentationPlant];
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
	NSString *sql1 = "Select * from perupez_hp_presentation_plant WHERE ";
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
    