//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_support_operation : NSObject{NSString* pkSupportOperation;
            NSString* supportOperationName;
            NSString* supportOperationDescription;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkSupportOperation: (NSString *)nuevo_valor;
        - (NSString*) get_pkSupportOperation;
        - (int) set_supportOperationName: (NSString *)nuevo_valor;
        - (NSString*) get_supportOperationName;
        - (int) set_supportOperationDescription: (NSString *)nuevo_valor;
        - (NSString*) get_supportOperationDescription;
        - (int) set_registrationDate: (NSString *)nuevo_valor;
        - (NSString*) get_registrationDate;
        - (int) set_statusRegister: (NSString *)nuevo_valor;
        - (NSString*) get_statusRegister;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDB;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end