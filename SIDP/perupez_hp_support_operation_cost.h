//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_support_operation_cost : NSObject{NSString* pkSupportOperationCost;
            NSString* fkPlant;
            NSString* fkCompany;
            NSString* fkSupportOperation;
            NSString* fkMeasureUnit;
            NSString* fkMoneyType;
            NSString* supportOperationCost;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkSupportOperationCost: (NSString *)nuevo_valor;
        - (NSString*) get_pkSupportOperationCost;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkCompany;
        - (int) set_fkSupportOperation: (NSString *)nuevo_valor;
        - (NSString*) get_fkSupportOperation;
        - (int) set_fkMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_fkMeasureUnit;
        - (int) set_fkMoneyType: (NSString *)nuevo_valor;
        - (NSString*) get_fkMoneyType;
        - (int) set_supportOperationCost: (NSString *)nuevo_valor;
        - (NSString*) get_supportOperationCost;
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