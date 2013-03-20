//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_raw_material_part : NSObject{NSString* pkRawMaterialPart;
            NSString* fkRawMaterial;
            NSString* rawMaterialPartName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkRawMaterialPart: (NSString *)nuevo_valor;
        - (NSString*) get_pkRawMaterialPart;
        - (int) set_fkRawMaterial: (NSString *)nuevo_valor;
        - (NSString*) get_fkRawMaterial;
        - (int) set_rawMaterialPartName: (NSString *)nuevo_valor;
        - (NSString*) get_rawMaterialPartName;
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