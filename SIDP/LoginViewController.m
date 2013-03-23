//
//  LoginViewController.m
//  scdp_touch
//
//  Created by Miguel Angel Vásquez Jiménez on 13/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize txtUser;
@synthesize txtPass;
@synthesize loginPanel;
@synthesize bannerPanel;
@synthesize btnLogin;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    loginPanel.layer.cornerRadius = 10;
    bannerPanel.layer.borderWidth = 1;
    bannerPanel.layer.borderColor = [[UIColor blackColor] CGColor];
    [[btnLogin layer] setCornerRadius:10.0f];
    [[btnLogin layer] setMasksToBounds: YES];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)initLogin:(id)sender
{
    perupez_def_sec_ldap* logclass = [[perupez_def_sec_ldap alloc] init];
    NSString *claveCod = [self sha1:txtPass.text];
    int res =[logclass prepareLogin:claveCod pass:txtPass.text];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if(res == 1)
    {
        [userDefaults setValue:@"1" forKey:@"logged"];
    }
    else
    {
        [userDefaults setValue:@"0" forKey:@"logged"];
    }
}

- (NSString *)sha1:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(cStr, strlen(cStr), result);
    NSString *s = [NSString  stringWithFormat:
                   @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                   result[0], result[1], result[2], result[3], result[4],
                   result[5], result[6], result[7],
                   result[8], result[9], result[10], result[11], result[12],
                   result[13], result[14], result[15],
                   result[16], result[17], result[18], result[19]
                   ];
    
    return s;
}

@end