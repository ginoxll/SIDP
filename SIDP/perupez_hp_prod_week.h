//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_prod_week : NSObject{NSString* pkProdWeek;
            NSString* fkCompany;
            NSString* weekYear;
            NSString* weekNumber;
            NSString* startDate;
            NSString* endDate;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkProdWeek: (NSString *)nuevo_valor;
        - (NSString*) get_pkProdWeek;
        - (int) set_fkCompany: (NSString *)nuevo_valor;
        - (NSString*) get_fkCompany;
        - (int) set_weekYear: (NSString *)nuevo_valor;
        - (NSString*) get_weekYear;
        - (int) set_weekNumber: (NSString *)nuevo_valor;
        - (NSString*) get_weekNumber;
        - (int) set_startDate: (NSString *)nuevo_valor;
        - (NSString*) get_startDate;
        - (int) set_endDate: (NSString *)nuevo_valor;
        - (NSString*) get_endDate;
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