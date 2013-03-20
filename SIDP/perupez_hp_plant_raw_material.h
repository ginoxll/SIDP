//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_plant_raw_material : NSObject{NSString* pkPlantRawMaterial;
            NSString* fkPlant;
            NSString* fkRawMaterial;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPlantRawMaterial: (NSString *)nuevo_valor;
        - (NSString*) get_pkPlantRawMaterial;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkRawMaterial: (NSString *)nuevo_valor;
        - (NSString*) get_fkRawMaterial;
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