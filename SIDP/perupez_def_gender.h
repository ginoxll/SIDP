//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_def_gender : NSObject{NSString* pkGender;
            NSString* sunatCode;
            NSString* genderName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkGender: (NSString *)nuevo_valor;
        - (NSString*) get_pkGender;
        - (int) set_sunatCode: (NSString *)nuevo_valor;
        - (NSString*) get_sunatCode;
        - (int) set_genderName: (NSString *)nuevo_valor;
        - (NSString*) get_genderName;
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