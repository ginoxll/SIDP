//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_supplier : NSObject{NSString* pkSupplier;
            NSString* supplierName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkSupplier: (NSString *)nuevo_valor;
        - (NSString*) get_pkSupplier;
        - (int) set_supplierName: (NSString *)nuevo_valor;
        - (NSString*) get_supplierName;
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