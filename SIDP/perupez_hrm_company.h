//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    
    @interface perupez_hrm_company : NSObject{NSString* pkCompany;
            NSString* fkSector;
            NSString* fkCompanyActivity;
            NSString* fkUbigeo;
            NSString* ruc;
            NSString* companyName;
            NSString* companyEmail;
            NSString* emergencyNumber;
            NSString* companyAddress;
            NSString* companyPhoneNumber;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkCompany: (NSString *)nuevo_valor;
        - (NSString*) get_pkCompany;
        - (int) set_fkSector: (NSString *)nuevo_valor;
        - (NSString*) get_fkSector;
        - (int) set_fkCompanyActivity: (NSString *)nuevo_valor;
        - (NSString*) get_fkCompanyActivity;
        - (int) set_fkUbigeo: (NSString *)nuevo_valor;
        - (NSString*) get_fkUbigeo;
        - (int) set_ruc: (NSString *)nuevo_valor;
        - (NSString*) get_ruc;
        - (int) set_companyName: (NSString *)nuevo_valor;
        - (NSString*) get_companyName;
        - (int) set_companyEmail: (NSString *)nuevo_valor;
        - (NSString*) get_companyEmail;
        - (int) set_emergencyNumber: (NSString *)nuevo_valor;
        - (NSString*) get_emergencyNumber;
        - (int) set_companyAddress: (NSString *)nuevo_valor;
        - (NSString*) get_companyAddress;
        - (int) set_companyPhoneNumber: (NSString *)nuevo_valor;
        - (NSString*) get_companyPhoneNumber;
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
    - (NSMutableArray*) listCompany;
    - (NSString*) description;
    
    @end