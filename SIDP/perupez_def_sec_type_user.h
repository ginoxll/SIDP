//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_def_sec_type_user : NSObject{NSString* pkTypeUser;
            NSString* typeUserName;
            NSString* defaultTypeUser;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkTypeUser: (NSString *)nuevo_valor;
        - (NSString*) get_pkTypeUser;
        - (int) set_typeUserName: (NSString *)nuevo_valor;
        - (NSString*) get_typeUserName;
        - (int) set_defaultTypeUser: (NSString *)nuevo_valor;
        - (NSString*) get_defaultTypeUser;
        - (int) set_registrationDate: (NSString *)nuevo_valor;
        - (NSString*) get_registrationDate;
        - (int) set_statusRegister: (NSString *)nuevo_valor;
        - (NSString*) get_statusRegister;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDb;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end