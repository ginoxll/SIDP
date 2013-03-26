//
//  ReceptionViewController.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 22/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//
#import "perupez_hrm_company.h"

#import "ExtracctionViewController.h"
#import "Util.h"

@interface ReceptionViewController : UIViewController <STComboTextDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate, ModalExtracctionDelegate, STDateTextDelegate>

// Objetos de Vista de Usuario
@property (nonatomic, retain) IBOutlet UIView* extracctionPanel;
@property (nonatomic, retain) IBOutlet UITableView* extracctionTable;

@property (nonatomic, retain) IBOutlet UITextField* txtLote;
@property (nonatomic, retain) IBOutlet UITextField* txtMatricula;
@property (nonatomic, retain) IBOutlet UITextField* txtSupplier;
@property (nonatomic, retain) IBOutlet UITextField* txtProcedence;

@property (nonatomic, retain) IBOutlet STComboText* cboCompany;

// Objetos para implementar lógica del negocio:
@property NSMutableArray* listExtracction;

//Fuentes de Datos Para combos:
@property NSMutableArray* listCompany;

//Punteros a los objetos seleccionados
@property perupez_hrm_company* selectedCompany;

// Metodos de la clase
- (IBAction)removeExtracctionDeclaration:(id)sender;

@end
