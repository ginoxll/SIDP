//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_supplier_raw_material : NSObject{NSString* pkSupplierRawMaterial;
            NSString* fkSupplier;
            NSString* fkRawMaterial;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkSupplierRawMaterial: (NSString *)nuevo_valor;
        - (NSString*) get_pkSupplierRawMaterial;
        - (int) set_fkSupplier: (NSString *)nuevo_valor;
        - (NSString*) get_fkSupplier;
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