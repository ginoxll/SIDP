//Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
	//Primera Version - 2013
    
    #import <Foundation/Foundation.h>
    #import 'Conexion.h'
    
    @interface perupez_def_person : NSObject{NSString* pkPerson;
            NSString* fkDocumentType;
            NSString* fkDocumentCountry;
            NSString* fkNacionalityCountry;
            NSString* fkGender;
            NSString* fkEducation;
            NSString* fkProfession;
            NSString* fkMaritalStatus;
            NSString* fkBloodGroup;
            NSString* documentNumber;
            NSString* birthDate;
            NSString* paternalSurname;
            NSString* maternalSurname;
            NSString* personName;
            NSString* email;
            NSString* ruc;
            NSString* registrationDate;
            NSString* statusRegister;
            }
    - (int) set_pkPerson: (NSString *)nuevo_valor;
        - (NSString*) get_pkPerson;
        - (int) set_fkDocumentType: (NSString *)nuevo_valor;
        - (NSString*) get_fkDocumentType;
        - (int) set_fkDocumentCountry: (NSString *)nuevo_valor;
        - (NSString*) get_fkDocumentCountry;
        - (int) set_fkNacionalityCountry: (NSString *)nuevo_valor;
        - (NSString*) get_fkNacionalityCountry;
        - (int) set_fkGender: (NSString *)nuevo_valor;
        - (NSString*) get_fkGender;
        - (int) set_fkEducation: (NSString *)nuevo_valor;
        - (NSString*) get_fkEducation;
        - (int) set_fkProfession: (NSString *)nuevo_valor;
        - (NSString*) get_fkProfession;
        - (int) set_fkMaritalStatus: (NSString *)nuevo_valor;
        - (NSString*) get_fkMaritalStatus;
        - (int) set_fkBloodGroup: (NSString *)nuevo_valor;
        - (NSString*) get_fkBloodGroup;
        - (int) set_documentNumber: (NSString *)nuevo_valor;
        - (NSString*) get_documentNumber;
        - (int) set_birthDate: (NSString *)nuevo_valor;
        - (NSString*) get_birthDate;
        - (int) set_paternalSurname: (NSString *)nuevo_valor;
        - (NSString*) get_paternalSurname;
        - (int) set_maternalSurname: (NSString *)nuevo_valor;
        - (NSString*) get_maternalSurname;
        - (int) set_personName: (NSString *)nuevo_valor;
        - (NSString*) get_personName;
        - (int) set_email: (NSString *)nuevo_valor;
        - (NSString*) get_email;
        - (int) set_ruc: (NSString *)nuevo_valor;
        - (NSString*) get_ruc;
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