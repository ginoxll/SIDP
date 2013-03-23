//
//  LoginViewController.h
//  scdp_touch
//
//  Created by Miguel Angel Vásquez Jiménez on 13/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#include <CommonCrypto/CommonDigest.h>
#import "perupez_def_sec_ldap.h"

@interface LoginViewController : UIViewController 
{
    UITextField* txtUser;
    UITextField* txtPass;
    UIView* loginPanel;
    UIView* bannerPanel;
    UIButton* btnLogin;
}

@property (nonatomic, retain) IBOutlet UITextField* txtUser;
@property (nonatomic, retain) IBOutlet UITextField* txtPass;
@property (nonatomic, retain) IBOutlet UIView* loginPanel;
@property (nonatomic, retain) IBOutlet UIView* bannerPanel;
@property (nonatomic, retain) IBOutlet UIButton* btnLogin;

- (IBAction)initLogin:(id)sender;
@end
