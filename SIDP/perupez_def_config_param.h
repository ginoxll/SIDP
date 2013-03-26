//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_def_config_param : NSObject{NSString* pkConfigParam;
            NSString* configParamId;
            NSString* configParamDescription;
            NSString* configParamUserMessage;
            NSString* configParamIntValue;
            NSString* configParamTextValue;
            }
    - (int) set_pkConfigParam: (NSString *)nuevo_valor;
        - (NSString*) get_pkConfigParam;
        - (int) set_configParamId: (NSString *)nuevo_valor;
        - (NSString*) get_configParamId;
        - (int) set_configParamDescription: (NSString *)nuevo_valor;
        - (NSString*) get_configParamDescription;
        - (int) set_configParamUserMessage: (NSString *)nuevo_valor;
        - (NSString*) get_configParamUserMessage;
        - (int) set_configParamIntValue: (NSString *)nuevo_valor;
        - (NSString*) get_configParamIntValue;
        - (int) set_configParamTextValue: (NSString *)nuevo_valor;
        - (NSString*) get_configParamTextValue;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDB;
    - (NSMutableArray*) listParameters: (NSString *)list;
- (BOOL) updateConfigParamById;
- (NSMutableDictionary*) getConfigParamById;
    
    @end