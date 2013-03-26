//
//  ConfigurationViewController.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 26/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "Util.h"
#import "perupez_hrm_company.h"
#import "perupez_hp_plant.h"
#import "perupez_def_config_param.h"

@interface ConfigurationViewController : UIViewController <STComboTextDelegate, UITextFieldDelegate>
@property (nonatomic, retain) IBOutlet STComboText* cboCompany;
@property (nonatomic, retain) IBOutlet STComboText* cboPlant;

@property (nonatomic, retain) IBOutlet UIButton* btnAccept;
@property (nonatomic, retain) IBOutlet UIButton* btnCancel;

@property NSMutableArray* listCompany;

@property NSMutableDictionary* selectedCompany;
@property NSMutableDictionary* selectedPlant;

- (IBAction)saveConfigParameter:(id)sender;
- (IBAction)cancelForm:(id)sender;

@end
