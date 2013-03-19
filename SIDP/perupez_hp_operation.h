//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_operation : NSObject{NSString* pkOperation;
            NSString* operationName;
            NSString* operationDescription;
            NSString* shortDescription;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkOperation: (NSString *)nuevo_valor;
        - (NSString*) get_pkOperation;
        - (int) set_operationName: (NSString *)nuevo_valor;
        - (NSString*) get_operationName;
        - (int) set_operationDescription: (NSString *)nuevo_valor;
        - (NSString*) get_operationDescription;
        - (int) set_shortDescription: (NSString *)nuevo_valor;
        - (NSString*) get_shortDescription;
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