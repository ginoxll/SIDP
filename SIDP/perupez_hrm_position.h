//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hrm_position : NSObject{NSString* pkPosition;
            NSString* positionName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPosition: (NSString *)nuevo_valor;
        - (NSString*) get_pkPosition;
        - (int) set_positionName: (NSString *)nuevo_valor;
        - (NSString*) get_positionName;
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