
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_hp_reception.h'
    @implementation perupez_hp_reception
    - (int) set_pkReception : (NSString *)nuevo_valor{
            self.pkReception = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkReception{
            return self.pkReception;
        }
        
        - (int) set_fkRawMaterial : (NSString *)nuevo_valor{
            self.fkRawMaterial = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkRawMaterial{
            return self.fkRawMaterial;
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
        
        - (int) set_fkTurn : (NSString *)nuevo_valor{
            self.fkTurn = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkTurn{
            return self.fkTurn;
        }
        
        - (int) set_fkVehicle : (NSString *)nuevo_valor{
            self.fkVehicle = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkVehicle{
            return self.fkVehicle;
        }
        
        - (int) set_fkSupplier : (NSString *)nuevo_valor{
            self.fkSupplier = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkSupplier{
            return self.fkSupplier;
        }
        
        - (int) set_fkReceptionSource : (NSString *)nuevo_valor{
            self.fkReceptionSource = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkReceptionSource{
            return self.fkReceptionSource;
        }
        
        - (int) set_fkPackMeasureUnit : (NSString *)nuevo_valor{
            self.fkPackMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPackMeasureUnit{
            return self.fkPackMeasureUnit;
        }
        
        - (int) set_fkWeightMeasureUnit : (NSString *)nuevo_valor{
            self.fkWeightMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkWeightMeasureUnit{
            return self.fkWeightMeasureUnit;
        }
        
        - (int) set_fkPropietaryCompany : (NSString *)nuevo_valor{
            self.fkPropietaryCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPropietaryCompany{
            return self.fkPropietaryCompany;
        }
        
        - (int) set_lotNumber : (NSString *)nuevo_valor{
            self.lotNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_lotNumber{
            return self.lotNumber;
        }
        
        - (int) set_receptionDate : (NSString *)nuevo_valor{
            self.receptionDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_receptionDate{
            return self.receptionDate;
        }
        
        - (int) set_startupDate : (NSString *)nuevo_valor{
            self.startupDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_startupDate{
            return self.startupDate;
        }
        
        - (int) set_finishDate : (NSString *)nuevo_valor{
            self.finishDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_finishDate{
            return self.finishDate;
        }
        
        - (int) set_totalWeight : (NSString *)nuevo_valor{
            self.totalWeight = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_totalWeight{
            return self.totalWeight;
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
    NSString *cad0 = [self.pkReception stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkRawMaterial];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkProduct];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.fkPresentation];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.fkPlant];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.fkTurn];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.fkVehicle];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.fkSupplier];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.fkReceptionSource];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:self.fkPackMeasureUnit];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:self.fkWeightMeasureUnit];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:self.fkPropietaryCompany];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cadtmp12 = [cad11 stringByAppendingString:self.lotNumber];
                NSString *cad12 = [cadtmp12 stringByAppendingString:@","];
                NSString *cadtmp13 = [cad12 stringByAppendingString:self.receptionDate];
                NSString *cad13 = [cadtmp13 stringByAppendingString:@","];
                NSString *cadtmp14 = [cad13 stringByAppendingString:self.startupDate];
                NSString *cad14 = [cadtmp14 stringByAppendingString:@","];
                NSString *cadtmp15 = [cad14 stringByAppendingString:self.finishDate];
                NSString *cad15 = [cadtmp15 stringByAppendingString:@","];
                NSString *cadtmp16 = [cad15 stringByAppendingString:self.totalWeight];
                NSString *cad16 = [cadtmp16 stringByAppendingString:@","];
                NSString *cadtmp17 = [cad16 stringByAppendingString:self.registrationDate];
                NSString *cad17 = [cadtmp17 stringByAppendingString:@","];
                NSString *cad18 = [cad17 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad18;int res = [conx Insertar:@"pkReception,fkRawMaterial,fkProduct,fkPresentation,fkPlant,fkTurn,fkVehicle,fkSupplier,fkReceptionSource,fkPackMeasureUnit,fkWeightMeasureUnit,fkPropietaryCompany,lotNumber,receptionDate,startupDate,finishDate,totalWeight,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_reception" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_reception SET ";
    NSString *cadtmp0 = [@"pkReception = '" stringByAppendingString:self.pkReception];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkRawMaterial = '" stringByAppendingString:self.fkRawMaterial];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkProduct = '" stringByAppendingString:self.fkProduct];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkPresentation = '" stringByAppendingString:self.fkPresentation];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkPlant = '" stringByAppendingString:self.fkPlant];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkTurn = '" stringByAppendingString:self.fkTurn];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkVehicle = '" stringByAppendingString:self.fkVehicle];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkSupplier = '" stringByAppendingString:self.fkSupplier];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"fkReceptionSource = '" stringByAppendingString:self.fkReceptionSource];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"fkPackMeasureUnit = '" stringByAppendingString:self.fkPackMeasureUnit];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"fkWeightMeasureUnit = '" stringByAppendingString:self.fkWeightMeasureUnit];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"fkPropietaryCompany = '" stringByAppendingString:self.fkPropietaryCompany];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"lotNumber = '" stringByAppendingString:self.lotNumber];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"',"];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadtmp13 = [@"receptionDate = '" stringByAppendingString:self.receptionDate];
                NSString *cadtmp113 = [cadtmp13 stringByAppendingString:@"',"];
                NSString *cad13 = [cad12 stringByAppendingString:cadtmp113];
                NSString *cadtmp14 = [@"startupDate = '" stringByAppendingString:self.startupDate];
                NSString *cadtmp114 = [cadtmp14 stringByAppendingString:@"',"];
                NSString *cad14 = [cad13 stringByAppendingString:cadtmp114];
                NSString *cadtmp15 = [@"finishDate = '" stringByAppendingString:self.finishDate];
                NSString *cadtmp115 = [cadtmp15 stringByAppendingString:@"',"];
                NSString *cad15 = [cad14 stringByAppendingString:cadtmp115];
                NSString *cadtmp16 = [@"totalWeight = '" stringByAppendingString:self.totalWeight];
                NSString *cadtmp116 = [cadtmp16 stringByAppendingString:@"',"];
                NSString *cad16 = [cad15 stringByAppendingString:cadtmp116];
                NSString *cadtmp17 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp117 = [cadtmp17 stringByAppendingString:@"',"];
                NSString *cad17 = [cad16 stringByAppendingString:cadtmp117];
                NSString *cadtmp18 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp118 = [cadtmp18 stringByAppendingString:@"' "];
                NSString *cad18 = [cad17 stringByAppendingString:cadtmp118];
                NSString *cadFinal = cad18;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkReception = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkReception];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkReception" valor:self.pkReception nombreTabla:@"perupez_hp_reception"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_reception"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12), sqlite3_column_text(res, 13), sqlite3_column_text(res, 14), sqlite3_column_text(res, 15), sqlite3_column_text(res, 16), sqlite3_column_text(res, 17), sqlite3_column_text(res, 18) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_hp_reception where pkReception = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkReception];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12), sqlite3_column_text(res, 13), sqlite3_column_text(res, 14), sqlite3_column_text(res, 15), sqlite3_column_text(res, 16), sqlite3_column_text(res, 17), sqlite3_column_text(res, 18) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_reception WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12), sqlite3_column_text(res, 13), sqlite3_column_text(res, 14), sqlite3_column_text(res, 15), sqlite3_column_text(res, 16), sqlite3_column_text(res, 17), sqlite3_column_text(res, 18) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    