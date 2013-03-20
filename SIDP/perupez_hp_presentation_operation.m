
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hp_presentation_operation.h"
    @implementation perupez_hp_presentation_operation
    - (int) set_pkPresentationOperation : (NSString *)nuevo_valor{
            pkPresentationOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPresentationOperation{
            return pkPresentationOperation;
        }
        
        - (int) set_fkPlant : (NSString *)nuevo_valor{
            fkPlant = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPlant{
            return fkPlant;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return fkCompany;
        }
        
        - (int) set_fkProduct : (NSString *)nuevo_valor{
            fkProduct = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkProduct{
            return fkProduct;
        }
        
        - (int) set_fkPresentation : (NSString *)nuevo_valor{
            fkPresentation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPresentation{
            return fkPresentation;
        }
        
        - (int) set_fkOperation : (NSString *)nuevo_valor{
            fkOperation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkOperation{
            return fkOperation;
        }
        
        - (int) set_fkMeasureUnit : (NSString *)nuevo_valor{
            fkMeasureUnit = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMeasureUnit{
            return fkMeasureUnit;
        }
        
        - (int) set_fkMoneyType : (NSString *)nuevo_valor{
            fkMoneyType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMoneyType{
            return fkMoneyType;
        }
        
        - (int) set_operationOrder : (NSString *)nuevo_valor{
            operationOrder = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_operationOrder{
            return operationOrder;
        }
        
        - (int) set_operationCost : (NSString *)nuevo_valor{
            operationCost = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_operationCost{
            return operationCost;
        }
        
        - (int) set_description : (NSString *)nuevo_valor{
            description = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_description{
            return description;
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
    NSString *cad0 = [self.pkPresentationOperation stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkPlant];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkCompany];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkProduct];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkPresentation];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:fkOperation];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:fkMeasureUnit];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:fkMoneyType];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:operationOrder];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:operationCost];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:description];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:registrationDate];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cad12 = [cad11 stringByAppendingString:statusRegister];
                NSString *cadsql = cad12;int res = [conx Insertar:@"pkPresentationOperation,fkPlant,fkCompany,fkProduct,fkPresentation,fkOperation,fkMeasureUnit,fkMoneyType,operationOrder,operationCost,description,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hp_presentation_operation" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hp_presentation_operation SET ";
    NSString *cadtmp0 = [@"pkPresentationOperation = '" stringByAppendingString:pkPresentationOperation];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkPlant = '" stringByAppendingString:fkPlant];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkCompany = '" stringByAppendingString:fkCompany];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkProduct = '" stringByAppendingString:fkProduct];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkPresentation = '" stringByAppendingString:fkPresentation];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkOperation = '" stringByAppendingString:fkOperation];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkMeasureUnit = '" stringByAppendingString:fkMeasureUnit];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkMoneyType = '" stringByAppendingString:fkMoneyType];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"operationOrder = '" stringByAppendingString:operationOrder];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"operationCost = '" stringByAppendingString:operationCost];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"description = '" stringByAppendingString:description];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"' "];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadFinal = cad12;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkPresentationOperation = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkPresentationOperation];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPresentationOperation" valor:pkPresentationOperation nombreTabla:@"perupez_hp_presentation_operation"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hp_presentation_operation"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hp_presentation_operation where pkPresentationOperation = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkPresentationOperation];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hp_presentation_operation WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),sqlite3_column_text(res, 6),sqlite3_column_text(res, 7),sqlite3_column_text(res, 8),sqlite3_column_text(res, 9),sqlite3_column_text(res, 10),sqlite3_column_text(res, 11),sqlite3_column_text(res, 12),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    