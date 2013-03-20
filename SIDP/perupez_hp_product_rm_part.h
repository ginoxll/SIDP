//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_product_rm_part : NSObject{NSString* pkProductRmPart;
            NSString* fkProduct;
            NSString* fkRawMaterialPart;
            NSString* percentYield;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkProductRmPart: (NSString *)nuevo_valor;
        - (NSString*) get_pkProductRmPart;
        - (int) set_fkProduct: (NSString *)nuevo_valor;
        - (NSString*) get_fkProduct;
        - (int) set_fkRawMaterialPart: (NSString *)nuevo_valor;
        - (NSString*) get_fkRawMaterialPart;
        - (int) set_percentYield: (NSString *)nuevo_valor;
        - (NSString*) get_percentYield;
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