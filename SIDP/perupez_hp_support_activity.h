//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_support_activity : NSObject{NSString* pkSupportActivity;
            NSString* fkSupportActivityHeader;
            NSString* fkClientCompany;
            NSString* fkPlant;
            NSString* fkEmployee;
            NSString* fkTurn;
            NSString* fkSupportOperation;
            NSString* fkMeasureUnit;
            NSString* fkMoneyType;
            NSString* fkLastUpdatePerson;
            NSString* fkApproverPerson;
            NSString* fkOperation;
            NSString* fkPeriod;
            NSString* fkProdWeek;
            NSString* lotNumber;
            NSString* startupDate;
            NSString* finishDate;
            NSString* quantity;
            NSString* activityCost;
            NSString* supportActivityDescription;
            NSString* isClosed;
            NSString* isPaid;
            NSString* supportActivityObservation;
            NSString* approvingDate;
            NSString* registrationDate;
            NSString* lastUpdate;
            NSString* statusRegister;
            }
    - (int) set_pkSupportActivity: (NSString *)nuevo_valor;
        - (NSString*) get_pkSupportActivity;
        - (int) set_fkSupportActivityHeader: (NSString *)nuevo_valor;
        - (NSString*) get_fkSupportActivityHeader;
        - (int) set_fkClientCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkClientCompany;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkEmployee: (NSString *)nuevo_valor;
        - (NSString*) get_fkEmployee;
        - (int) set_fkTurn: (NSString *)nuevo_valor;
        - (NSString*) get_fkTurn;
        - (int) set_fkSupportOperation: (NSString *)nuevo_valor;
        - (NSString*) get_fkSupportOperation;
        - (int) set_fkMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_fkMeasureUnit;
        - (int) set_fkMoneyType: (NSString *)nuevo_valor;
        - (NSString*) get_fkMoneyType;
        - (int) set_fkLastUpdatePerson: (NSString *)nuevo_valor;
        - (NSString*) get_fkLastUpdatePerson;
        - (int) set_fkApproverPerson: (NSString *)nuevo_valor;
        - (NSString*) get_fkApproverPerson;
        - (int) set_fkOperation: (NSString *)nuevo_valor;
        - (NSString*) get_fkOperation;
        - (int) set_fkPeriod: (NSString *)nuevo_valor;
        - (NSString*) get_fkPeriod;
        - (int) set_fkProdWeek: (NSString *)nuevo_valor;
        - (NSString*) get_fkProdWeek;
        - (int) set_lotNumber: (NSString *)nuevo_valor;
        - (NSString*) get_lotNumber;
        - (int) set_startupDate: (NSString *)nuevo_valor;
        - (NSString*) get_startupDate;
        - (int) set_finishDate: (NSString *)nuevo_valor;
        - (NSString*) get_finishDate;
        - (int) set_quantity: (NSString *)nuevo_valor;
        - (NSString*) get_quantity;
        - (int) set_activityCost: (NSString *)nuevo_valor;
        - (NSString*) get_activityCost;
        - (int) set_supportActivityDescription: (NSString *)nuevo_valor;
        - (NSString*) get_supportActivityDescription;
        - (int) set_isClosed: (NSString *)nuevo_valor;
        - (NSString*) get_isClosed;
        - (int) set_isPaid: (NSString *)nuevo_valor;
        - (NSString*) get_isPaid;
        - (int) set_supportActivityObservation: (NSString *)nuevo_valor;
        - (NSString*) get_supportActivityObservation;
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