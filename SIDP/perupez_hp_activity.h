//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_activity : NSObject{NSString* pkActivity;
            NSString* fkProductionActivity;
            NSString* fkClientCompany;
            NSString* fkPlant;
            NSString* fkEmployee;
            NSString* fkTurn;
            NSString* fkMeasureUnit;
            NSString* fkOperation;
            NSString* fkProduct;
            NSString* fkPresentation;
            NSString* fkMoneyType;
            NSString* fkLastUpdatePerson;
            NSString* fkApproverPerson;
            NSString* fkPeriod;
            NSString* fkProdWeek;
            NSString* startupDate;
            NSString* finishDate;
            NSString* quantity;
            NSString* lotNumber;
            NSString* activityCost;
            NSString* isClosed;
            NSString* isPaid;
            NSString* activityObservation;
            NSString* approvingDate;
            NSString* registrationDate;
            NSString* lastUpdate;
            NSString* statusRegister;
            }
    - (int) set_pkActivity: (NSString *)nuevo_valor;
        - (NSString*) get_pkActivity;
        - (int) set_fkProductionActivity: (NSString *)nuevo_valor;
        - (NSString*) get_fkProductionActivity;
        - (int) set_fkClientCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkClientCompany;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkEmployee: (NSString *)nuevo_valor;
        - (NSString*) get_fkEmployee;
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
        - (int) set_fkMoneyType: (NSString *)nuevo_valor;
        - (NSString*) get_fkMoneyType;
        - (int) set_fkLastUpdatePerson: (NSString *)nuevo_valor;
        - (NSString*) get_fkLastUpdatePerson;
        - (int) set_fkApproverPerson: (NSString *)nuevo_valor;
        - (NSString*) get_fkApproverPerson;
        - (int) set_fkPeriod: (NSString *)nuevo_valor;
        - (NSString*) get_fkPeriod;
        - (int) set_fkProdWeek: (NSString *)nuevo_valor;
        - (NSString*) get_fkProdWeek;
        - (int) set_startupDate: (NSString *)nuevo_valor;
        - (NSString*) get_startupDate;
        - (int) set_finishDate: (NSString *)nuevo_valor;
        - (NSString*) get_finishDate;
        - (int) set_quantity: (NSString *)nuevo_valor;
        - (NSString*) get_quantity;
        - (int) set_lotNumber: (NSString *)nuevo_valor;
        - (NSString*) get_lotNumber;
        - (int) set_activityCost: (NSString *)nuevo_valor;
        - (NSString*) get_activityCost;
        - (int) set_isClosed: (NSString *)nuevo_valor;
        - (NSString*) get_isClosed;
        - (int) set_isPaid: (NSString *)nuevo_valor;
        - (NSString*) get_isPaid;
        - (int) set_activityObservation: (NSString *)nuevo_valor;
        - (NSString*) get_activityObservation;
        - (int) set_approvingDate: (NSString *)nuevo_valor;
        - (NSString*) get_approvingDate;
        - (int) set_registrationDate: (NSString *)nuevo_valor;
        - (NSString*) get_registrationDate;
        - (int) set_lastUpdate: (NSString *)nuevo_valor;
        - (NSString*) get_lastUpdate;
        - (int) set_statusRegister: (NSString *)nuevo_valor;
        - (NSString*) get_statusRegister;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDB;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end