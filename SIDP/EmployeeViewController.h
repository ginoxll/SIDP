//
//  EmployeeViewController.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 25/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "perupez_hrm_company.h"
#import "perupez_hrm_company_position.h"
#import "perupez_hrm_employee.h"
@class  EmployeeViewController;

@protocol EmployeeSelectionDelegate <NSObject>
@required
- (void) addEmployeesFromSelection:(NSMutableArray*)selectedEmployees;
@end

@interface EmployeeViewController : UIViewController <UITextFieldDelegate, STComboTextDelegate, UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@property (nonatomic, retain) IBOutlet UIView* filterPanel;
@property (nonatomic, retain) IBOutlet UIView* employeePanel;
@property (nonatomic, retain) IBOutlet UIButton* btnShowAll;
@property (nonatomic, retain) IBOutlet UIButton* btnSearch;
@property (nonatomic, retain) IBOutlet UITableView* employeeTable;
@property (nonatomic, retain) IBOutlet UITextField* txtEmployeeName;
@property (nonatomic, retain) IBOutlet UITextField* txtDocumentType;
@property (nonatomic, retain) IBOutlet STComboText* cboCompany;
@property (nonatomic, retain) IBOutlet STComboText* cboPosition;
@property (nonatomic, weak) IBOutlet id <EmployeeSelectionDelegate> delegate;

@property NSMutableArray* listCompany;

@property NSMutableDictionary* selectedCompany;
@property NSMutableDictionary* selectedPosition;

@property NSMutableArray* listEmployee;
@property NSMutableArray* listSelectedEmployee;

- (IBAction)employeeSearch:(id)sender;
- (IBAction)showAllEmployee:(id)sender;
- (IBAction)sendSelectedEmployees:(id)sender;

@end
