//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface error_log : NSObject{NSString* pkError;
            NSString* ip;
            NSString* dateTime;
            NSString* description;
            NSString* tracer;
            NSString* module;
            NSString* controller;
            NSString* action;
            NSString* url;
            NSString* user;
            NSString* state;
            }
    - (int) set_pkError: (NSString *)nuevo_valor;
        - (NSString*) get_pkError;
        - (int) set_ip: (NSString *)nuevo_valor;
        - (NSString*) get_ip;
        - (int) set_dateTime: (NSString *)nuevo_valor;
        - (NSString*) get_dateTime;
        - (int) set_description: (NSString *)nuevo_valor;
        - (NSString*) get_description;
        - (int) set_tracer: (NSString *)nuevo_valor;
        - (NSString*) get_tracer;
        - (int) set_module: (NSString *)nuevo_valor;
        - (NSString*) get_module;
        - (int) set_controller: (NSString *)nuevo_valor;
        - (NSString*) get_controller;
        - (int) set_action: (NSString *)nuevo_valor;
        - (NSString*) get_action;
        - (int) set_url: (NSString *)nuevo_valor;
        - (NSString*) get_url;
        - (int) set_user: (NSString *)nuevo_valor;
        - (NSString*) get_user;
        - (int) set_state: (NSString *)nuevo_valor;
        - (NSString*) get_state;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDb;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end