//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_def_sec_audit : NSObject{NSString* pkAudit;
            NSString* fkUser;
            NSString* fkModule;
            NSString* ipPc;
            NSString* dateTimeOperation;
            NSString* controller;
            NSString* action;
            NSString* yearOperation;
            NSString* monthOperation;
            NSString* dateOperation;
            }
    - (int) set_pkAudit: (NSString *)nuevo_valor;
        - (NSString*) get_pkAudit;
        - (int) set_fkUser: (NSString *)nuevo_valor;
        - (NSString*) get_fkUser;
        - (int) set_fkModule: (NSString *)nuevo_valor;
        - (NSString*) get_fkModule;
        - (int) set_ipPc: (NSString *)nuevo_valor;
        - (NSString*) get_ipPc;
        - (int) set_dateTimeOperation: (NSString *)nuevo_valor;
        - (NSString*) get_dateTimeOperation;
        - (int) set_controller: (NSString *)nuevo_valor;
        - (NSString*) get_controller;
        - (int) set_action: (NSString *)nuevo_valor;
        - (NSString*) get_action;
        - (int) set_yearOperation: (NSString *)nuevo_valor;
        - (NSString*) get_yearOperation;
        - (int) set_monthOperation: (NSString *)nuevo_valor;
        - (NSString*) get_monthOperation;
        - (int) set_dateOperation: (NSString *)nuevo_valor;
        - (NSString*) get_dateOperation;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDb;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end