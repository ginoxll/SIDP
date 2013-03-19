//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_presentation_operation : NSObject{NSString* pkPresentationOperation;
            NSString* fkPlant;
            NSString* fkCompany;
            NSString* fkProduct;
            NSString* fkPresentation;
            NSString* fkOperation;
            NSString* fkMeasureUnit;
            NSString* fkMoneyType;
            NSString* operationOrder;
            NSString* operationCost;
            NSString* description;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPresentationOperation: (NSString *)nuevo_valor;
        - (NSString*) get_pkPresentationOperation;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkCompany;
        - (int) set_fkProduct: (NSString *)nuevo_valor;
        - (NSString*) get_fkProduct;
        - (int) set_fkPresentation: (NSString *)nuevo_valor;
        - (NSString*) get_fkPresentation;
        - (int) set_fkOperation: (NSString *)nuevo_valor;
        - (NSString*) get_fkOperation;
        - (int) set_fkMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_fkMeasureUnit;
        - (int) set_fkMoneyType: (NSString *)nuevo_valor;
        - (NSString*) get_fkMoneyType;
        - (int) set_operationOrder: (NSString *)nuevo_valor;
        - (NSString*) get_operationOrder;
        - (int) set_operationCost: (NSString *)nuevo_valor;
        - (NSString*) get_operationCost;
        - (int) set_description: (NSString *)nuevo_valor;
        - (NSString*) get_description;
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