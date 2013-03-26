//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hrm_company_position : NSObject{NSString* pkCompanyPosition;
            NSString* fkCompany;
            NSString* fkPosition;
            NSString* fkOccupation;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkCompanyPosition: (NSString *)nuevo_valor;
        - (NSString*) get_pkCompanyPosition;
        - (int) set_fkCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkCompany;
        - (int) set_fkPosition: (NSString *)nuevo_valor;
        - (NSString*) get_fkPosition;
        - (int) set_fkOccupation: (NSString *)nuevo_valor;
        - (NSString*) get_fkOccupation;
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