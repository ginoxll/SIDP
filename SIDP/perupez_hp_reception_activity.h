//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_reception_activity : NSObject{NSString* pkReceptionActivity;
            NSString* fkReception;
            NSString* fkActivity;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkReceptionActivity: (NSString *)nuevo_valor;
        - (NSString*) get_pkReceptionActivity;
        - (int) set_fkReception: (NSString *)nuevo_valor;
        - (NSString*) get_fkReception;
        - (int) set_fkActivity: (NSString *)nuevo_valor;
        - (NSString*) get_fkActivity;
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