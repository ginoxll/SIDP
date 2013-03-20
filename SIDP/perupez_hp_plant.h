//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_plant : NSObject{NSString* pkPlant;
            NSString* fkCompany;
            NSString* fkEstablishmentType;
            NSString* fkUbigeo;
            NSString* sunatCode;
            NSString* plantName;
            NSString* plantAddress;
            NSString* plantPhoneNumber;
            NSString* isRiskCenter;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_pkPlant;
        - (int) set_fkCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkCompany;
        - (int) set_fkEstablishmentType: (NSString *)nuevo_valor;
        - (NSString*) get_fkEstablishmentType;
        - (int) set_fkUbigeo: (NSString *)nuevo_valor;
        - (NSString*) get_fkUbigeo;
        - (int) set_sunatCode: (NSString *)nuevo_valor;
        - (NSString*) get_sunatCode;
        - (int) set_plantName: (NSString *)nuevo_valor;
        - (NSString*) get_plantName;
        - (int) set_plantAddress: (NSString *)nuevo_valor;
        - (NSString*) get_plantAddress;
        - (int) set_plantPhoneNumber: (NSString *)nuevo_valor;
        - (NSString*) get_plantPhoneNumber;
        - (int) set_isRiskCenter: (NSString *)nuevo_valor;
        - (NSString*) get_isRiskCenter;
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