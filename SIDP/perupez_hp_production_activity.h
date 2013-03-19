//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_production_activity : NSObject{NSString* pkProductionActivity;
            NSString* fkClientCompany;
            NSString* fkPlant;
            NSString* fkTurn;
            NSString* fkMeasureUnit;
            NSString* fkOperation;
            NSString* fkProduct;
            NSString* fkPresentation;
            NSString* lotNumber;
            NSString* activityDate;
            NSString* quantity;
            NSString* startupDate;
            NSString* finishDate;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkProductionActivity: (NSString *)nuevo_valor;
        - (NSString*) get_pkProductionActivity;
        - (int) set_fkClientCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkClientCompany;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkTurn: (NSString *)nuevo_valor;
        - (NSString*) get_fkTurn;
        - (int) set_fkMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_fkMeasureUnit;
        - (int) set_fkOperation: (NSString *)nuevo_valor;
        - (NSString*) get_fkOperation;
        - (int) set_fkProduct: (NSString *)nuevo_valor;
        - (NSString*) get_fkProduct;
        - (int) set_fkPresentation: (NSString *)nuevo_valor;
        - (NSString*) get_fkPresentation;
        - (int) set_lotNumber: (NSString *)nuevo_valor;
        - (NSString*) get_lotNumber;
        - (int) set_activityDate: (NSString *)nuevo_valor;
        - (NSString*) get_activityDate;
        - (int) set_quantity: (NSString *)nuevo_valor;
        - (NSString*) get_quantity;
        - (int) set_startupDate: (NSString *)nuevo_valor;
        - (NSString*) get_startupDate;
        - (int) set_finishDate: (NSString *)nuevo_valor;
        - (NSString*) get_finishDate;
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