//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_def_sec_module : NSObject{NSString* pkModule;
            NSString* fkSystem;
            NSString* nameModule;
            NSString* nameTable;
            NSString* showInterface;
            }
    - (int) set_pkModule: (NSString *)nuevo_valor;
        - (NSString*) get_pkModule;
        - (int) set_fkSystem: (NSString *)nuevo_valor;
        - (NSString*) get_fkSystem;
        - (int) set_nameModule: (NSString *)nuevo_valor;
        - (NSString*) get_nameModule;
        - (int) set_nameTable: (NSString *)nuevo_valor;
        - (NSString*) get_nameTable;
        - (int) set_showInterface: (NSString *)nuevo_valor;
        - (NSString*) get_showInterface;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDB;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end