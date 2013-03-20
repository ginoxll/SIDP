//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_reception : NSObject{NSString* pkReception;
            NSString* fkRawMaterial;
            NSString* fkProduct;
            NSString* fkPresentation;
            NSString* fkPlant;
            NSString* fkTurn;
            NSString* fkVehicle;
            NSString* fkSupplier;
            NSString* fkReceptionSource;
            NSString* fkPackMeasureUnit;
            NSString* fkWeightMeasureUnit;
            NSString* fkPropietaryCompany;
            NSString* lotNumber;
            NSString* receptionDate;
            NSString* startupDate;
            NSString* finishDate;
            NSString* totalWeight;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkReception: (NSString *)nuevo_valor;
        - (NSString*) get_pkReception;
        - (int) set_fkRawMaterial: (NSString *)nuevo_valor;
        - (NSString*) get_fkRawMaterial;
        - (int) set_fkProduct: (NSString *)nuevo_valor;
        - (NSString*) get_fkProduct;
        - (int) set_fkPresentation: (NSString *)nuevo_valor;
        - (NSString*) get_fkPresentation;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkTurn: (NSString *)nuevo_valor;
        - (NSString*) get_fkTurn;
        - (int) set_fkVehicle: (NSString *)nuevo_valor;
        - (NSString*) get_fkVehicle;
        - (int) set_fkSupplier: (NSString *)nuevo_valor;
        - (NSString*) get_fkSupplier;
        - (int) set_fkReceptionSource: (NSString *)nuevo_valor;
        - (NSString*) get_fkReceptionSource;
        - (int) set_fkPackMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_fkPackMeasureUnit;
        - (int) set_fkWeightMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_fkWeightMeasureUnit;
        - (int) set_fkPropietaryCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkPropietaryCompany;
        - (int) set_lotNumber: (NSString *)nuevo_valor;
        - (NSString*) get_lotNumber;
        - (int) set_receptionDate: (NSString *)nuevo_valor;
        - (NSString*) get_receptionDate;
        - (int) set_startupDate: (NSString *)nuevo_valor;
        - (NSString*) get_startupDate;
        - (int) set_finishDate: (NSString *)nuevo_valor;
        - (NSString*) get_finishDate;
        - (int) set_totalWeight: (NSString *)nuevo_valor;
        - (NSString*) get_totalWeight;
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