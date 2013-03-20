//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_def_document_type : NSObject{NSString* pkDocumentType;
            NSString* sunatCode;
            NSString* documentTypeName;
            NSString* shortDescription;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkDocumentType: (NSString *)nuevo_valor;
        - (NSString*) get_pkDocumentType;
        - (int) set_sunatCode: (NSString *)nuevo_valor;
        - (NSString*) get_sunatCode;
        - (int) set_documentTypeName: (NSString *)nuevo_valor;
        - (NSString*) get_documentTypeName;
        - (int) set_shortDescription: (NSString *)nuevo_valor;
        - (NSString*) get_shortDescription;
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