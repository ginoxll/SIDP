//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_presentation : NSObject{NSString* pkPresentation;
            NSString* fkProduct;
            NSString* presentationName;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPresentation: (NSString *)nuevo_valor;
        - (NSString*) get_pkPresentation;
        - (int) set_fkProduct: (NSString *)nuevo_valor;
        - (NSString*) get_fkProduct;
        - (int) set_presentationName: (NSString *)nuevo_valor;
        - (NSString*) get_presentationName;
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
- (NSMutableArray*) getList;
    @end