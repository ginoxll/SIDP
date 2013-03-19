//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_vehicle : NSObject{NSString* pkVehicle;
            NSString* plateNumber;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkVehicle: (NSString *)nuevo_valor;
        - (NSString*) get_pkVehicle;
        - (int) set_plateNumber: (NSString *)nuevo_valor;
        - (NSString*) get_plateNumber;
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