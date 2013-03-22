//
//  ReceptionViewController.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 22/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//
#import "perupez_hrm_company.h"

@interface ReceptionViewController : UIViewController <STComboTextDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>
{
    UIView* extracctionPanel;
    UITableView* extracctionTable;
    UITextField* txtLote;
    UITextField* txtMatricula;
    UITextField* txtSupplier;
    UITextField* txtProcedence;
    STComboText* cboCompany;
    NSMutableArray* listCompany;
    NSMutableArray* listExtracction;
    perupez_hrm_company* selectedCompany;
}

@property (nonatomic, retain) IBOutlet UIView* extracctionPanel;
@property (nonatomic, retain) IBOutlet UITextField* txtLote;
@property (nonatomic, retain) IBOutlet UITextField* txtMatricula;
@property (nonatomic, retain) IBOutlet UITextField* txtSupplier;
@property (nonatomic, retain) IBOutlet UITextField* txtProcedence;
@property (nonatomic, retain) IBOutlet STComboText* cboCompany;
@property (nonatomic, retain) IBOutlet UITableView* extracctionTable;
@property NSMutableArray* listExtracction;
@property NSMutableArray* listCompany;
@property perupez_hrm_company* selectedCompany;

@end
