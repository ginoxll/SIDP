//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_measure_unit : NSObject{NSString* pkMeasureUnit;
            NSString* fkMeasureUnitType;
            NSString* measureUnitName;
            NSString* measureUnitAcronym;
            NSString* baseConversion;
            NSString* isBaseUnit;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_pkMeasureUnit;
        - (int) set_fkMeasureUnitType: (NSString *)nuevo_valor;
        - (NSString*) get_fkMeasureUnitType;
        - (int) set_measureUnitName: (NSString *)nuevo_valor;
        - (NSString*) get_measureUnitName;
        - (int) set_measureUnitAcronym: (NSString *)nuevo_valor;
        - (NSString*) get_measureUnitAcronym;
        - (int) set_baseConversion: (NSString *)nuevo_valor;
        - (NSString*) get_baseConversion;
        - (int) set_isBaseUnit: (NSString *)nuevo_valor;
        - (NSString*) get_isBaseUnit;
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