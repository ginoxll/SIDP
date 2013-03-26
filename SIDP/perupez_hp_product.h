//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_product : NSObject{NSString* pkProduct;
            NSString* fkRawMaterial;
            NSString* productDescription;
            NSString* yieldPercent;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkProduct: (NSString *)nuevo_valor;
        - (NSString*) get_pkProduct;
        - (int) set_fkRawMaterial: (NSString *)nuevo_valor;
        - (NSString*) get_fkRawMaterial;
        - (int) set_productDescription: (NSString *)nuevo_valor;
        - (NSString*) get_productDescription;
        - (int) set_yieldPercent: (NSString *)nuevo_valor;
        - (NSString*) get_yieldPercent;
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