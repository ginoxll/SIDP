//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import "Conexion.h"
    
    @interface perupez_def_sec_detail_audit : NSObject{NSString* pkDetailAudit;
            NSString* fkAudit;
            NSString* fkTable;
            NSString* siud;
            NSString* fkKey;
            }
    - (int) set_pkDetailAudit: (NSString *)nuevo_valor;
        - (NSString*) get_pkDetailAudit;
        - (int) set_fkAudit: (NSString *)nuevo_valor;
        - (NSString*) get_fkAudit;
        - (int) set_fkTable: (NSString *)nuevo_valor;
        - (NSString*) get_fkTable;
        - (int) set_siud: (NSString *)nuevo_valor;
        - (NSString*) get_siud;
        - (int) set_fkKey: (NSString *)nuevo_valor;
        - (NSString*) get_fkKey;
        
    - (int) insertDB;
    - (int) modDB;
    - (int) delDb;
    - (NSMutableArray*) allDB;
    - (NSMutableArray*) getDB;
    - (NSMutableArray*) listParameters: (NSString *)list;
    
    @end