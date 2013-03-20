//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_hp_extract_declaration : NSObject{NSString* pkExtractionDeclaration;
            NSString* fkReception;
            NSString* extractionDeclarationNumber;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkExtractionDeclaration: (NSString *)nuevo_valor;
        - (NSString*) get_pkExtractionDeclaration;
        - (int) set_fkReception: (NSString *)nuevo_valor;
        - (NSString*) get_fkReception;
        - (int) set_extractionDeclarationNumber: (NSString *)nuevo_valor;
        - (NSString*) get_extractionDeclarationNumber;
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