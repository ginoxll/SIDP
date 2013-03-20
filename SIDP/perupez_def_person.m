
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import "perupez_def_person.h"
    @implementation perupez_def_person
    - (int) set_pkPerson : (NSString *)nuevo_valor{
            pkPerson = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPerson{
            return pkPerson;
        }
        
        - (int) set_fkDocumentType : (NSString *)nuevo_valor{
            fkDocumentType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkDocumentType{
            return fkDocumentType;
        }
        
        - (int) set_fkDocumentCountry : (NSString *)nuevo_valor{
            fkDocumentCountry = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkDocumentCountry{
            return fkDocumentCountry;
        }
        
        - (int) set_fkNacionalityCountry : (NSString *)nuevo_valor{
            fkNacionalityCountry = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkNacionalityCountry{
            return fkNacionalityCountry;
        }
        
        - (int) set_fkGender : (NSString *)nuevo_valor{
            fkGender = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkGender{
            return fkGender;
        }
        
        - (int) set_fkEducation : (NSString *)nuevo_valor{
            fkEducation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkEducation{
            return fkEducation;
        }
        
        - (int) set_fkProfession : (NSString *)nuevo_valor{
            fkProfession = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkProfession{
            return fkProfession;
        }
        
        - (int) set_fkMaritalStatus : (NSString *)nuevo_valor{
            fkMaritalStatus = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMaritalStatus{
            return fkMaritalStatus;
        }
        
        - (int) set_fkBloodGroup : (NSString *)nuevo_valor{
            fkBloodGroup = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkBloodGroup{
            return fkBloodGroup;
        }
        
        - (int) set_documentNumber : (NSString *)nuevo_valor{
            documentNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_documentNumber{
            return documentNumber;
        }
        
        - (int) set_birthDate : (NSString *)nuevo_valor{
            birthDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_birthDate{
            return birthDate;
        }
        
        - (int) set_paternalSurname : (NSString *)nuevo_valor{
            paternalSurname = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_paternalSurname{
            return paternalSurname;
        }
        
        - (int) set_maternalSurname : (NSString *)nuevo_valor{
            maternalSurname = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_maternalSurname{
            return maternalSurname;
        }
        
        - (int) set_personName : (NSString *)nuevo_valor{
            personName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_personName{
            return personName;
        }
        
        - (int) set_email : (NSString *)nuevo_valor{
            email = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_email{
            return email;
        }
        
        - (int) set_ruc : (NSString *)nuevo_valor{
            ruc = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_ruc{
            return ruc;
        }
        
        - (int) set_registrationDate : (NSString *)nuevo_valor{
            registrationDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_registrationDate{
            return registrationDate;
        }
        
        - (int) set_statusRegister : (NSString *)nuevo_valor{
            statusRegister = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_statusRegister{
            return statusRegister;
        }
        
        - (int) insertDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cad0 = [pkPerson stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:fkDocumentType];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:fkDocumentCountry];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:fkNacionalityCountry];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:fkGender];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:fkEducation];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:fkProfession];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:fkMaritalStatus];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:fkBloodGroup];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:documentNumber];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:birthDate];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:paternalSurname];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cadtmp12 = [cad11 stringByAppendingString:maternalSurname];
                NSString *cad12 = [cadtmp12 stringByAppendingString:@","];
                NSString *cadtmp13 = [cad12 stringByAppendingString:personName];
                NSString *cad13 = [cadtmp13 stringByAppendingString:@","];
                NSString *cadtmp14 = [cad13 stringByAppendingString:email];
                NSString *cad14 = [cadtmp14 stringByAppendingString:@","];
                NSString *cadtmp15 = [cad14 stringByAppendingString:ruc];
                NSString *cad15 = [cadtmp15 stringByAppendingString:@","];
                NSString *cadtmp16 = [cad15 stringByAppendingString:registrationDate];
                NSString *cad16 = [cadtmp16 stringByAppendingString:@","];
                NSString *cad17 = [cad16 stringByAppendingString:statusRegister];
                NSString *cadsql = cad17;int res = [conx Insertar:@"pkPerson,fkDocumentType,fkDocumentCountry,fkNacionalityCountry,fkGender,fkEducation,fkProfession,fkMaritalStatus,fkBloodGroup,documentNumber,birthDate,paternalSurname,maternalSurname,personName,email,ruc,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_def_person" ];
    return res;
    }- (int) modDB{
    Conexion* conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_person SET ";
    NSString *cadtmp0 = [@"pkPerson = '" stringByAppendingString:pkPerson];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkDocumentType = '" stringByAppendingString:fkDocumentType];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkDocumentCountry = '" stringByAppendingString:fkDocumentCountry];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkNacionalityCountry = '" stringByAppendingString:fkNacionalityCountry];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkGender = '" stringByAppendingString:fkGender];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkEducation = '" stringByAppendingString:fkEducation];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkProfession = '" stringByAppendingString:fkProfession];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkMaritalStatus = '" stringByAppendingString:fkMaritalStatus];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"fkBloodGroup = '" stringByAppendingString:fkBloodGroup];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"documentNumber = '" stringByAppendingString:documentNumber];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"birthDate = '" stringByAppendingString:birthDate];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"paternalSurname = '" stringByAppendingString:paternalSurname];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"maternalSurname = '" stringByAppendingString:maternalSurname];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"',"];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadtmp13 = [@"personName = '" stringByAppendingString:personName];
                NSString *cadtmp113 = [cadtmp13 stringByAppendingString:@"',"];
                NSString *cad13 = [cad12 stringByAppendingString:cadtmp113];
                NSString *cadtmp14 = [@"email = '" stringByAppendingString:email];
                NSString *cadtmp114 = [cadtmp14 stringByAppendingString:@"',"];
                NSString *cad14 = [cad13 stringByAppendingString:cadtmp114];
                NSString *cadtmp15 = [@"ruc = '" stringByAppendingString:ruc];
                NSString *cadtmp115 = [cadtmp15 stringByAppendingString:@"',"];
                NSString *cad15 = [cad14 stringByAppendingString:cadtmp115];
                NSString *cadtmp16 = [@"registrationDate = '" stringByAppendingString:registrationDate];
                NSString *cadtmp116 = [cadtmp16 stringByAppendingString:@"',"];
                NSString *cad16 = [cad15 stringByAppendingString:cadtmp116];
                NSString *cadtmp17 = [@"statusRegister = '" stringByAppendingString:statusRegister];
                NSString *cadtmp117 = [cadtmp17 stringByAppendingString:@"' "];
                NSString *cad17 = [cad16 stringByAppendingString:cadtmp117];
                NSString *cadFinal = cad17;
                NSString *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkPerson = '";
    NSString *cadBase4 = [cadBase3 stringByAppendingString:pkPerson];
    NSString *cadBase5 = [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	[conx sqlLibre:cadsql];
    return 1;
    }
    - (int) delDb{
	Conexion* conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPerson" valor:pkPerson nombreTabla:@"perupez_def_person"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_person"];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
                NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
                NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
                NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
                NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
                NSString *d5 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 5)];
                NSString *d6 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 6)];
                NSString *d7 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 7)];
                NSString *d8 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 8)];
                NSString *d9 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 9)];
                NSString *d10 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 10)];
                NSString *d11 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 11)];
                NSString *d12 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 12)];
                NSString *d13 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 13)];
                NSString *d14 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 14)];
                NSString *d15 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 15)];
                NSString *d16 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 16)];
                NSString *d17 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 17)];
                [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,nil] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDB{
    NSString *cadBase1 = @"Select * from perupez_def_person where pkPerson = '";
    NSString *cadBase2 = [cadBase stringByAppendingString:pkPerson];
    NSString *cadBase3 = @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion* conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
        NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
        NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
        NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
        NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
        NSString *d5 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 5)];
        NSString *d6 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 6)];
        NSString *d7 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 7)];
        NSString *d8 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 8)];
        NSString *d9 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 9)];
        NSString *d10 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 10)];
        NSString *d11 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 11)];
        NSString *d12 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 12)];
        NSString *d13 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 13)];
        NSString *d14 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 14)];
        NSString *d15 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 15)];
        NSString *d16 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 16)];
        NSString *d17 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 17)];
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,nil] atIndex: i];
    i = i+1; 
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion* conx = [[Conexion alloc] init];
	NSString *sql1 = @"Select * from perupez_def_person WHERE ";
	NSString *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc] init];
	int i = 0;
    while(sqlite3_step(res) == SQLITE_ROW){NSString *d0 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 0)];
        NSString *d1 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 1)];
        NSString *d2 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 2)];
        NSString *d3 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 3)];
        NSString *d4 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 4)];
        NSString *d5 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 5)];
        NSString *d6 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 6)];
        NSString *d7 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 7)];
        NSString *d8 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 8)];
        NSString *d9 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 9)];
        NSString *d10 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 10)];
        NSString *d11 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 11)];
        NSString *d12 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 12)];
        NSString *d13 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 13)];
        NSString *d14 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 14)];
        NSString *d15 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 15)];
        NSString *d16 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 16)];
        NSString *d17 =[NSString stringWithUTF8String:(char *)sqlite3_column_text(res, 17)];
        [resultado insertObject: [NSArray arrayWithObjects: d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,nil] atIndex: i];
     i = i+1;
     }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    