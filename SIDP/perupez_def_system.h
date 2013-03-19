//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_def_system : NSObject{NSString* pkSystem;
            NSString* systemName;
            NSString* numberOrder;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkSystem: (NSString *)nuevo_valor;
        - (NSString*) get_pkSystem;
        - (int) set_systemName: (NSString *)nuevo_valor;
        - (NSString*) get_systemName;
        - (int) set_numberOrder: (NSString *)nuevo_valor;
        - (NSString*) get_numberOrder;
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