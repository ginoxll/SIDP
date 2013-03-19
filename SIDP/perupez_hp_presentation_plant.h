//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_hp_presentation_plant : NSObject{NSString* pkPresentationPlant;
            NSString* fkProduct;
            NSString* fkPresentation;
            NSString* fkPlant;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPresentationPlant: (NSString *)nuevo_valor;
        - (NSString*) get_pkPresentationPlant;
        - (int) set_fkProduct: (NSString *)nuevo_valor;
        - (NSString*) get_fkProduct;
        - (int) set_fkPresentation: (NSString *)nuevo_valor;
        - (NSString*) get_fkPresentation;
        - (int) set_fkPlant: (NSString *)nuevo_valor;
        - (NSString*) get_fkPlant;
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