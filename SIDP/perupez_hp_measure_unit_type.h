//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cari�o para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_measure_unit_type : NSObject{NSString* pkMeasureUnitType;
            NSString* measureUnitTypeName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkMeasureUnitType: (NSString *)nuevo_valor;
        - (NSString*) get_pkMeasureUnitType;
        - (int) set_measureUnitTypeName: (NSString *)nuevo_valor;
        - (NSString*) get_measureUnitTypeName;
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