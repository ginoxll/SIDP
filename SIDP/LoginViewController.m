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

@end