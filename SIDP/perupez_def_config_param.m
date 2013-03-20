
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_def_config_param.h"
    @implementation perupez_def_config_param
    - (int) set_pkConfigParam : (NSString *)nuevo_valor{
            pkConfigParam = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkConfigParam{
            return pkConfigParam;
        }
        
        - (int) set_configParamId : (NSString *)nuevo_valor{
            configParamId = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_configParamId{
            return configParamId;
        }
        
        - (int) set_configParamDescription : (NSString *)nuevo_valor{
            configParamDescription = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_configParamDescription{
            return configParamDescription;
        }
        
        - (int) set_configParamUserMessage : (NSString *)nuevo_valor{
            configParamUserMessage = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_configParamUserMessage{
            return configParamUserMessage;
        }
        
        - (int) set_configParamIntValue : (NSString *)nuevo_valor{
            configParamIntValue = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_configParamIntValue{
            return configParamIntValue;
        }
        
        - (int) set_configParamTextValue : (NSString *)nuevo_valor{
            configParamTextValue = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_configParamTextValue{
            return configParamTextValue;
        }
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkConfigParam stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:configParamId];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:configParamDescription];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:configParamUserMessage];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:configParamIntValue];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cad5 = [cad4 stringByAppendingString:configParamTextValue];
                NSString *cadsql = cad5;int res = [conx Insertar:@"pkConfigParam,configParamId,configParamDescription,configParamUserMessage,configParamIntValue,configParamTextValue" valores:cadsql nombreTabla:@"perupez_def_config_param" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_config_param SET ";
    NSString *cadtmp0 = [@"pkConfigParam = '" stringByAppendingString:pkConfigParam];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"configParamId = '" stringByAppendingString:configParamId];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"configParamDescription = '" stringByAppendingString:configParamDescription];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"configParamUserMessage = '" stringByAppendingString:configParamUserMessage];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"configParamIntValue = '" stringByAppendingString:configParamIntValue];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"configParamTextValue = '" stringByAppendingString:configParamTextValue];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"' "];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadFinal = cad5;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:[cadFinal]];
    NSString *cadBase3 = @" WHERE pkConfigParam = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:pkConfigParam];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:[cadBase5]];
   	int res = [conx sqlLibre:cadsql];
    return res;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkConfigParam" valor:pkConfigParam nombreTabla:@"perupez_def_config_param"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_config_param"];
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
    NSString *cadBase1 = @"Select * from perupez_def_config_param where pkConfigParam = '";
    NSString *cadBase2 [cadBase stringByAppendingString:pkConfigParam];
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
	NSString *sql1 = "Select * from perupez_def_config_param WHERE ";
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
    