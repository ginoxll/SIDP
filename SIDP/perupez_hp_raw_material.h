//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_raw_material : NSObject{NSString* pkRawMaterial;
            NSString* fkSpecies;
            NSString* rawMaterialName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkRawMaterial: (NSString *)nuevo_valor;
        - (NSString*) get_pkRawMaterial;
        - (int) set_fkSpecies: (NSString *)nuevo_valor;
        - (NSString*) get_fkSpecies;
        - (int) set_rawMaterialName: (NSString *)nuevo_valor;
        - (NSString*) get_rawMaterialName;
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