//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_support_activity_header : NSObject{NSString* pkSupportActivityHeader;
            NSString* fkClientCompany;
            NSString* fkPlant;
            NSString* fkTurn;
            NSString* fkSupportOperation;
            NSString* fkMeasureUnit;
            NSString* lotNumber;
            NSString* activityDate;
            NSString* quantity;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkSupportActivityHeader: (NSString *)nuevo_valor;
        - (NSString*) get_pkSupportActivityHeader;
        - (int) set_fkClientCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkClientCompany;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkTurn: (NSString *)nuevo_valor;
        - (NSString*) get_fkTurn;
        - (int) set_fkSupportOperation: (NSString *)nuevo_valor;
        - (NSString*) get_fkSupportOperation;
        - (int) set_fkMeasureUnit: (NSString *)nuevo_valor;
        - (NSString*) get_fkMeasureUnit;
        - (int) set_lotNumber: (NSString *)nuevo_valor;
        - (NSString*) get_lotNumber;
        - (int) set_activityDate: (NSString *)nuevo_valor;
        - (NSString*) get_activityDate;
        - (int) set_quantity: (NSString *)nuevo_valor;
        - (NSString*) get_quantity;
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