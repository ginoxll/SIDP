
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_presentation_operation.h'
    @implementation perupez_hp_presentation_operation
    - (int) set_pkPresentationOperation : (NSString *)nuevo_valor{
            self.pkPresentationOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPresentationOperation{
            return self.pkPresentationOperation;
        }
        
        - (int) set_fkPlant : (NSString *)nuevo_valor{
            self.fkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPlant{
            return self.fkPlant;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            self.fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return self.fkCompany;
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
        
        - (int) set_fkOperation : (NSString *)nuevo_valor{
            self.fkOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkOperation{
            return self.fkOperation;
        }
        
        - (int) set_fkMeasureUnit : (NSString *)nuevo_valor{
            self.fkMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMeasureUnit{
            return self.fkMeasureUnit;
        }
        
        - (int) set_fkMoneyType : (NSString *)nuevo_valor{
            self.fkMoneyType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMoneyType{
            return self.fkMoneyType;
        }
        
        - (int) set_operationOrder : (NSString *)nuevo_valor{
            self.operationOrder = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_operationOrder{
            return self.operationOrder;
        }
        
        - (int) set_operationCost : (NSString *)nuevo_valor{
            self.operationCost = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_operationCost{
            return self.operationCost;
        }
        
        - (int) set_description : (NSString *)nuevo_valor{
            self.description = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_description{
            return self.description;
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
    NSString *cad0 = [self.pkPresentationOperation stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkPlant];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkCompany];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.fkProduct];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.fkPresentation];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.fkOperation];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.fkMeasureUnit];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.fkMoneyType];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.operationOrder];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:self.operationCost];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:self.description];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:self.registrationDate];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cad12 = [cad11 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad12;int res = [conx Insertar:@"pkPresentationOperation,fkPlant,fkCompany,fkProduct,fkPresentation,fkOperation,fkMeasureUnit,fkMoneyType,operationOrder,operationCost,description,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_presentation_operation" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_presentation_operation SET ";
    NSString *cadtmp0 = [@"pkPresentationOperation = '" stringByAppendingString:self.pkPresentationOperation];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkPlant = '" stringByAppendingString:self.fkPlant];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkCompany = '" stringByAppendingString:self.fkCompany];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkProduct = '" stringByAppendingString:self.fkProduct];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkPresentation = '" stringByAppendingString:self.fkPresentation];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkOperation = '" stringByAppendingString:self.fkOperation];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkMeasureUnit = '" stringByAppendingString:self.fkMeasureUnit];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkMoneyType = '" stringByAppendingString:self.fkMoneyType];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"operationOrder = '" stringByAppendingString:self.operationOrder];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"operationCost = '" stringByAppendingString:self.operationCost];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"description = '" stringByAppendingString:self.description];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"' "];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadFinal = cad12;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkPresentationOperation = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkPresentationOperation];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPresentationOperation" valor:self.pkPresentationOperation nombreTabla:@"perupez_hp_presentation_operation"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_presentation_operation"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_hp_presentation_operation where pkPresentationOperation = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkPresentationOperation];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_presentation_operation WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    