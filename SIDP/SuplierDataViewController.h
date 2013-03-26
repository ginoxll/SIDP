//
//  SuplierDataViewController.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 24/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "DocumentType.h"
#import "perupez_hp_raw_material.h"
#import "perupez_hp_product.h"
#import "perupez_hp_presentation.h"
#import "EmployeeViewController.h"
#import "Util.h"

@interface SuplierDataViewController : UIViewController <STComboTextDelegate, STDateTextDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate, EmployeeSelectionDelegate>

@property (nonatomic, retain) IBOutlet UIView* employeePanel;
@property (nonatomic, retain) IBOutlet UITableView* employeeTable;

@property (nonatomic, retain) IBOutlet STComboText* cboRawMaterial;
@property (nonatomic, retain) IBOutlet STComboText* cboProduct;
@property (nonatomic, retain) IBOutlet STComboText* cboPresentation;
@property (nonatomic, retain) IBOutlet STComboText* cboWeight;
@property (nonatomic, retain) IBOutlet STComboText* cboReception;

@property (nonatomic, retain) IBOutlet UITextField* txtWeight;
@property (nonatomic, retain) IBOutlet UITextField* txtReception;

@property (nonatomic, retain) IBOutlet STDateText* txtStartHour;
@property (nonatomic, retain) IBOutlet STDateText* txtEndHour;

@property (nonatomic, retain) IBOutlet UIButton* btnDistribute;

@property NSMutableArray* listRawMaterial;
@property NSMutableArray* listProduct;
@property NSMutableArray* listPresentation;
@property NSMutableArray* listWeight;
@property NSMutableArray* listReception;
@property NSMutableArray* listEmployee;

@property NSMutableDictionary* selectedRawMaterial;
@property NSMutableDictionary* selectedProduct;
@property NSMutableDictionary* selectedPresentation;
@property NSMutableDictionary* selectedWeight;
@property NSMutableDictionary* selectedReception;

- (IBAction)removeEmployee:(id)sender;

@end
