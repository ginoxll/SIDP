//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_def_sec_ldap : NSObject{NSString* pkPerson;
            NSString* userLogin;
            NSString* userPassword;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPerson: (NSString *)nuevo_valor;
        - (NSString*) get_pkPerson;
        - (int) set_userLogin: (NSString *)nuevo_valor;
        - (NSString*) get_userLogin;
        - (int) set_userPassword: (NSString *)nuevo_valor;
        - (NSString*) get_userPassword;
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