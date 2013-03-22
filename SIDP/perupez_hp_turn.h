//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    @interface perupez_hp_turn : NSObject{NSString* pkTurn;
            NSString* turnName;
            NSString* startTime;
            NSString* finishTime;
            NSString* turnOrder;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkTurn: (NSString *)nuevo_valor;
        - (NSString*) get_pkTurn;
        - (int) set_turnName: (NSString *)nuevo_valor;
        - (NSString*) get_turnName;
        - (int) set_startTime: (NSString *)nuevo_valor;
        - (NSString*) get_startTime;
        - (int) set_finishTime: (NSString *)nuevo_valor;
        - (NSString*) get_finishTime;
        - (int) set_turnOrder: (NSString *)nuevo_valor;
        - (NSString*) get_turnOrder;
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
    + (NSMutableArray*) listTurn;
- (NSString*) description;

    @end