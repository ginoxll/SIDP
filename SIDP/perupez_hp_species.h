//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_species : NSObject{NSString* pkSpecies;
            NSString* speciesName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkSpecies: (NSString *)nuevo_valor;
        - (NSString*) get_pkSpecies;
        - (int) set_speciesName: (NSString *)nuevo_valor;
        - (NSString*) get_speciesName;
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