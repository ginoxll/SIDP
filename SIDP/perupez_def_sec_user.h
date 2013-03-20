//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_def_sec_user : NSObject{NSString* pkUser;
            NSString* fkTypeUser;
            NSString* fkPerson;
            NSString* lastAccess;
            NSString* userExpires;
            NSString* startDate;
            NSString* endDate;
            NSString* multiSession;
            NSString* isLocked;
            NSString* unlockTime;
            NSString* loginFailures;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkUser: (NSString *)nuevo_valor;
        - (NSString*) get_pkUser;
        - (int) set_fkTypeUser: (NSString *)nuevo_valor;
        - (NSString*) get_fkTypeUser;
        - (int) set_fkPerson: (NSString *)nuevo_valor;
        - (NSString*) get_fkPerson;
        - (int) set_lastAccess: (NSString *)nuevo_valor;
        - (NSString*) get_lastAccess;
        - (int) set_userExpires: (NSString *)nuevo_valor;
        - (NSString*) get_userExpires;
        - (int) set_startDate: (NSString *)nuevo_valor;
        - (NSString*) get_startDate;
        - (int) set_endDate: (NSString *)nuevo_valor;
        - (NSString*) get_endDate;
        - (int) set_multiSession: (NSString *)nuevo_valor;
        - (NSString*) get_multiSession;
        - (int) set_isLocked: (NSString *)nuevo_valor;
        - (NSString*) get_isLocked;
        - (int) set_unlockTime: (NSString *)nuevo_valor;
        - (NSString*) get_unlockTime;
        - (int) set_loginFailures: (NSString *)nuevo_valor;
        - (NSString*) get_loginFailures;
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