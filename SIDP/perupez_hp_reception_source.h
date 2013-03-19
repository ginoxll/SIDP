//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_reception_source : NSObject{NSString* pkReceptionSource;
            NSString* receptionSource;
            }
    - (int) set_pkReceptionSource: (NSString *)nuevo_valor;
        - (NSString*) get_pkReceptionSource;
        - (int) set_receptionSource: (NSString *)nuevo_valor;
        - (NSString*) get_receptionSource;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDb;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end