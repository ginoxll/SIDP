//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_def_sec_user_company : NSObject{NSString* pkUserCompany;
            NSString* fkUser;
            NSString* fkCompany;
            NSString* fkPlant;
            NSString* fkTypeUser;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkUserCompany: (NSString *)nuevo_valor;
        - (NSString*) get_pkUserCompany;
        - (int) set_fkUser: (NSString *)nuevo_valor;
        - (NSString*) get_fkUser;
        - (int) set_fkCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkCompany;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
        - (int) set_fkTypeUser: (NSString *)nuevo_valor;
        - (NSString*) get_fkTypeUser;
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