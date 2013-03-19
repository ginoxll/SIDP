
    //Clase generada con el generador php de clases para Xcode de Gino Lluen
    //Con cariño para Jasoft - 2013
    //Primera Version - 2013
    #import 'perupez_def_person.h'
    @implementation perupez_def_person
    - (int) set_pkPerson : (NSString *)nuevo_valor{
            self.pkPerson = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_pkPerson{
            return self.pkPerson;
        }
        
        - (int) set_fkDocumentType : (NSString *)nuevo_valor{
            self.fkDocumentType = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkDocumentType{
            return self.fkDocumentType;
        }
        
        - (int) set_fkDocumentCountry : (NSString *)nuevo_valor{
            self.fkDocumentCountry = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkDocumentCountry{
            return self.fkDocumentCountry;
        }
        
        - (int) set_fkNacionalityCountry : (NSString *)nuevo_valor{
            self.fkNacionalityCountry = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkNacionalityCountry{
            return self.fkNacionalityCountry;
        }
        
        - (int) set_fkGender : (NSString *)nuevo_valor{
            self.fkGender = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkGender{
            return self.fkGender;
        }
        
        - (int) set_fkEducation : (NSString *)nuevo_valor{
            self.fkEducation = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkEducation{
            return self.fkEducation;
        }
        
        - (int) set_fkProfession : (NSString *)nuevo_valor{
            self.fkProfession = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkProfession{
            return self.fkProfession;
        }
        
        - (int) set_fkMaritalStatus : (NSString *)nuevo_valor{
            self.fkMaritalStatus = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkMaritalStatus{
            return self.fkMaritalStatus;
        }
        
        - (int) set_fkBloodGroup : (NSString *)nuevo_valor{
            self.fkBloodGroup = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_fkBloodGroup{
            return self.fkBloodGroup;
        }
        
        - (int) set_documentNumber : (NSString *)nuevo_valor{
            self.documentNumber = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_documentNumber{
            return self.documentNumber;
        }
        
        - (int) set_birthDate : (NSString *)nuevo_valor{
            self.birthDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_birthDate{
            return self.birthDate;
        }
        
        - (int) set_paternalSurname : (NSString *)nuevo_valor{
            self.paternalSurname = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_paternalSurname{
            return self.paternalSurname;
        }
        
        - (int) set_maternalSurname : (NSString *)nuevo_valor{
            self.maternalSurname = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_maternalSurname{
            return self.maternalSurname;
        }
        
        - (int) set_personName : (NSString *)nuevo_valor{
            self.personName = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_personName{
            return self.personName;
        }
        
        - (int) set_email : (NSString *)nuevo_valor{
            self.email = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_email{
            return self.email;
        }
        
        - (int) set_ruc : (NSString *)nuevo_valor{
            self.ruc = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_ruc{
            return self.ruc;
        }
        
        - (int) set_registrationDate : (NSString *)nuevo_valor{
            self.registrationDate = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_registrationDate{
            return self.registrationDate;
        }
        
        - (int) set_statusRegister : (NSString *)nuevo_valor{
            self.statusRegister = nuevo_valor;
            return 1;
        }
        
        - (NSString*) get_statusRegister{
            return self.statusRegister;
        }
        
        - (int) insertDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cad0 = [self.pkPerson stringByAppendingString:@","];
            NSString *cadtmp1 = [cad0 stringByAppendingString:self.fkDocumentType];
                NSString *cad1 = [cadtmp1 stringByAppendingString:@","];
                NSString *cadtmp2 = [cad1 stringByAppendingString:self.fkDocumentCountry];
                NSString *cad2 = [cadtmp2 stringByAppendingString:@","];
                NSString *cadtmp3 = [cad2 stringByAppendingString:self.fkNacionalityCountry];
                NSString *cad3 = [cadtmp3 stringByAppendingString:@","];
                NSString *cadtmp4 = [cad3 stringByAppendingString:self.fkGender];
                NSString *cad4 = [cadtmp4 stringByAppendingString:@","];
                NSString *cadtmp5 = [cad4 stringByAppendingString:self.fkEducation];
                NSString *cad5 = [cadtmp5 stringByAppendingString:@","];
                NSString *cadtmp6 = [cad5 stringByAppendingString:self.fkProfession];
                NSString *cad6 = [cadtmp6 stringByAppendingString:@","];
                NSString *cadtmp7 = [cad6 stringByAppendingString:self.fkMaritalStatus];
                NSString *cad7 = [cadtmp7 stringByAppendingString:@","];
                NSString *cadtmp8 = [cad7 stringByAppendingString:self.fkBloodGroup];
                NSString *cad8 = [cadtmp8 stringByAppendingString:@","];
                NSString *cadtmp9 = [cad8 stringByAppendingString:self.documentNumber];
                NSString *cad9 = [cadtmp9 stringByAppendingString:@","];
                NSString *cadtmp10 = [cad9 stringByAppendingString:self.birthDate];
                NSString *cad10 = [cadtmp10 stringByAppendingString:@","];
                NSString *cadtmp11 = [cad10 stringByAppendingString:self.paternalSurname];
                NSString *cad11 = [cadtmp11 stringByAppendingString:@","];
                NSString *cadtmp12 = [cad11 stringByAppendingString:self.maternalSurname];
                NSString *cad12 = [cadtmp12 stringByAppendingString:@","];
                NSString *cadtmp13 = [cad12 stringByAppendingString:self.personName];
                NSString *cad13 = [cadtmp13 stringByAppendingString:@","];
                NSString *cadtmp14 = [cad13 stringByAppendingString:self.email];
                NSString *cad14 = [cadtmp14 stringByAppendingString:@","];
                NSString *cadtmp15 = [cad14 stringByAppendingString:self.ruc];
                NSString *cad15 = [cadtmp15 stringByAppendingString:@","];
                NSString *cadtmp16 = [cad15 stringByAppendingString:self.registrationDate];
                NSString *cad16 = [cadtmp16 stringByAppendingString:@","];
                NSString *cad17 = [cad16 stringByAppendingString:self.statusRegister];
                NSString *cadsql = cad17;int res = [conx Insertar:@"pkPerson,fkDocumentType,fkDocumentCountry,fkNacionalityCountry,fkGender,fkEducation,fkProfession,fkMaritalStatus,fkBloodGroup,documentNumber,birthDate,paternalSurname,maternalSurname,personName,email,ruc,registrationDate,statusRegister" valores:cadsql nombreTabla:@"perupez_def_person" ];
    return res;
    }- (int) modDB{
    Conexion *conx = [[Conexion alloc] init];
    NSString *cadBase = @"ALTER TABLE perupez_def_person SET ";
    NSString *cadtmp0 = [@"pkPerson = '" stringByAppendingString:self.pkPerson];
                NSString *cad0 = [cadtmp0 stringByAppendingString:@"',"];
                NSString *cadtmp1 = [@"fkDocumentType = '" stringByAppendingString:self.fkDocumentType];
                NSString *cadtmp11 = [cadtmp1 stringByAppendingString:@"',"];
                NSString *cad1 = [cad0 stringByAppendingString:cadtmp11];
                NSString *cadtmp2 = [@"fkDocumentCountry = '" stringByAppendingString:self.fkDocumentCountry];
                NSString *cadtmp12 = [cadtmp2 stringByAppendingString:@"',"];
                NSString *cad2 = [cad1 stringByAppendingString:cadtmp12];
                NSString *cadtmp3 = [@"fkNacionalityCountry = '" stringByAppendingString:self.fkNacionalityCountry];
                NSString *cadtmp13 = [cadtmp3 stringByAppendingString:@"',"];
                NSString *cad3 = [cad2 stringByAppendingString:cadtmp13];
                NSString *cadtmp4 = [@"fkGender = '" stringByAppendingString:self.fkGender];
                NSString *cadtmp14 = [cadtmp4 stringByAppendingString:@"',"];
                NSString *cad4 = [cad3 stringByAppendingString:cadtmp14];
                NSString *cadtmp5 = [@"fkEducation = '" stringByAppendingString:self.fkEducation];
                NSString *cadtmp15 = [cadtmp5 stringByAppendingString:@"',"];
                NSString *cad5 = [cad4 stringByAppendingString:cadtmp15];
                NSString *cadtmp6 = [@"fkProfession = '" stringByAppendingString:self.fkProfession];
                NSString *cadtmp16 = [cadtmp6 stringByAppendingString:@"',"];
                NSString *cad6 = [cad5 stringByAppendingString:cadtmp16];
                NSString *cadtmp7 = [@"fkMaritalStatus = '" stringByAppendingString:self.fkMaritalStatus];
                NSString *cadtmp17 = [cadtmp7 stringByAppendingString:@"',"];
                NSString *cad7 = [cad6 stringByAppendingString:cadtmp17];
                NSString *cadtmp8 = [@"fkBloodGroup = '" stringByAppendingString:self.fkBloodGroup];
                NSString *cadtmp18 = [cadtmp8 stringByAppendingString:@"',"];
                NSString *cad8 = [cad7 stringByAppendingString:cadtmp18];
                NSString *cadtmp9 = [@"documentNumber = '" stringByAppendingString:self.documentNumber];
                NSString *cadtmp19 = [cadtmp9 stringByAppendingString:@"',"];
                NSString *cad9 = [cad8 stringByAppendingString:cadtmp19];
                NSString *cadtmp10 = [@"birthDate = '" stringByAppendingString:self.birthDate];
                NSString *cadtmp110 = [cadtmp10 stringByAppendingString:@"',"];
                NSString *cad10 = [cad9 stringByAppendingString:cadtmp110];
                NSString *cadtmp11 = [@"paternalSurname = '" stringByAppendingString:self.paternalSurname];
                NSString *cadtmp111 = [cadtmp11 stringByAppendingString:@"',"];
                NSString *cad11 = [cad10 stringByAppendingString:cadtmp111];
                NSString *cadtmp12 = [@"maternalSurname = '" stringByAppendingString:self.maternalSurname];
                NSString *cadtmp112 = [cadtmp12 stringByAppendingString:@"',"];
                NSString *cad12 = [cad11 stringByAppendingString:cadtmp112];
                NSString *cadtmp13 = [@"personName = '" stringByAppendingString:self.personName];
                NSString *cadtmp113 = [cadtmp13 stringByAppendingString:@"',"];
                NSString *cad13 = [cad12 stringByAppendingString:cadtmp113];
                NSString *cadtmp14 = [@"email = '" stringByAppendingString:self.email];
                NSString *cadtmp114 = [cadtmp14 stringByAppendingString:@"',"];
                NSString *cad14 = [cad13 stringByAppendingString:cadtmp114];
                NSString *cadtmp15 = [@"ruc = '" stringByAppendingString:self.ruc];
                NSString *cadtmp115 = [cadtmp15 stringByAppendingString:@"',"];
                NSString *cad15 = [cad14 stringByAppendingString:cadtmp115];
                NSString *cadtmp16 = [@"registrationDate = '" stringByAppendingString:self.registrationDate];
                NSString *cadtmp116 = [cadtmp16 stringByAppendingString:@"',"];
                NSString *cad16 = [cad15 stringByAppendingString:cadtmp116];
                NSString *cadtmp17 = [@"statusRegister = '" stringByAppendingString:self.statusRegister];
                NSString *cadtmp117 = [cadtmp17 stringByAppendingString:@"' "];
                NSString *cad17 = [cad16 stringByAppendingString:cadtmp117];
                NSString *cadFinal = cad17;
                NSSTring *cadBase2 = [cadBase stringByAppendingString:cadFinal];
    NSString *cadBase3 = @" WHERE pkPerson = '";
    NSString *cadBase4 [cadBase3 stringByAppendingString:self.pkPerson];
    NSString *cadBase5 [cadBase4 stringByAppendingString:@"' "];
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase5];
   	int res = [conx sqlLibre:cad6];
    return res;
    }
    - (int) delDb{
	Conexion *conx = [[Conexion alloc] init];
	int res = [conx Borrar:@"pkPerson" valor:self.pkPerson nombreTabla:@"perupez_def_person"];
	return res;
    }
    - (NSMutableArray*) allDB{
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx ListaDB:@"perupez_def_person"];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12), sqlite3_column_text(res, 13), sqlite3_column_text(res, 14), sqlite3_column_text(res, 15), sqlite3_column_text(res, 16), sqlite3_column_text(res, 17) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) getDb{
    NSString *cadBase1 = @"Select * from perupez_def_person where pkPerson = '";
    NSString *cadBase2 [cadBase stringByAppendingString:self.pkPerson];
    NSString *cadBase3 @"' ";
    NSString *cadsql = [cadBase2 stringByAppendingString:cadBase3];
	Conexion *conx = [[Conexion alloc] init];
	sqlite3_stmt *res = [conx sqlLibre:cadsql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
    sqlite3_step(res) == SQLITE_ROW;
    [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12), sqlite3_column_text(res, 13), sqlite3_column_text(res, 14), sqlite3_column_text(res, 15), sqlite3_column_text(res, 16), sqlite3_column_text(res, 17) ] atIndex: 0];
    sqlite3_finalize(res);
	return resultado;
    }
    - (NSMutableArray*) listParameters: (NSString *)list{
	Conexion *conx = [[Conexion alloc] init];
	NSString *sql1 = "Select * from perupez_def_person WHERE ";
	NSSTring *sql = [sql1 stringByAppendingString:list];
	sqlite3_stmt *res = [conx sqlLibre:sql];
	NSMutableArray *resultado = [[NSMutableArray alloc]];
	int i = 0;
	    while(sqlite3_step(res) == SQLITE_ROW) {
        {
            [resultado insertObject: [NSArray arrayWithObjects: sqlite3_column_text(res, 0), sqlite3_column_text(res, 1), sqlite3_column_text(res, 2), sqlite3_column_text(res, 3), sqlite3_column_text(res, 4), sqlite3_column_text(res, 5), sqlite3_column_text(res, 6), sqlite3_column_text(res, 7), sqlite3_column_text(res, 8), sqlite3_column_text(res, 9), sqlite3_column_text(res, 10), sqlite3_column_text(res, 11), sqlite3_column_text(res, 12), sqlite3_column_text(res, 13), sqlite3_column_text(res, 14), sqlite3_column_text(res, 15), sqlite3_column_text(res, 16), sqlite3_column_text(res, 17) ] atIndex: i];
			     i = i+1;
            }
    sqlite3_finalize(res);
	return resultado;
    }
    @end
    