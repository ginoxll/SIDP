
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_hrm_company_position.h"
    @implementation perupez_hrm_company_position
    - (int) set_pkCompanyPosition : (NSString *)nuevo_valor{
            pkCompanyPosition = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkCompanyPosition{
            return pkCompanyPosition;
        }
        
        - (int) set_fkCompany : (NSString *)nuevo_valor{
            fkCompany = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkCompany{
            return fkCompany;
        }
        
        - (int) set_fkPosition : (NSString *)nuevo_valor{
            fkPosition = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkPosition{
            return fkPosition;
        }
        
        - (int) set_fkOccupation : (NSString *)nuevo_valor{
            fkOccupation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkOccupation{
            return fkOccupation;
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
    NSString *cad0 = [self.pkCompanyPosition stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkCompany];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkPosition];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkOccupation];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:registrationDate];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cad5 = [cad4 stringByAppendingString:statusRegister];
                NSString *cadsql = cad5;int res = [conx Insertar:@"pkCompanyPosition,fkCompany,fkPosition,fkOccupation,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_hrm_company_position" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_hrm_company_position SET ";
    NSString *cadtmp0 = [@"pkCompanyPosition = '" stringByAppendingString:pkCompanyPosition];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkCompany = '" stringByAppendingString:fkCompany];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkPosition = '" stringByAppendingString:fkPosition];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkOccupation = '" stringByAppendingString:fkOccupation];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"' "];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadFinal = cad5;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkCompanyPosition = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkCompanyPosition];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkCompanyPosition" valor:pkCompanyPosition nombreTabla:@"perupez_hrm_company_position"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_hrm_company_position"];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_hrm_company_position where pkCompanyPosition = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkCompanyPosition];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase3]];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),nil] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_hrm_company_position WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[[NSMutableArray alloc] init] autorelease];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0),sqlite3_column_text(res, 1),sqlite3_column_text(res, 2),sqlite3_column_text(res, 3),sqlite3_column_text(res, 4),sqlite3_column_text(res, 5),nil] atIndex: i];
                i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    