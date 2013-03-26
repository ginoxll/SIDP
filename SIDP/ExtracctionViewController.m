//
//  ExtracctionViewController.m
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 23/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "ExtracctionViewController.h"


@interface ExtracctionViewController ()

@end

@implementation ExtracctionViewController
@synthesize delegate;
@synthesize txtDeclarationName;
@synthesize btnAccept;
@synthesize btnCancel;

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
    [btnAccept layer].cornerRadius = 10.0f;
    [btnAccept layer].masksToBounds = YES;
    [btnCancel layer].cornerRadius = 10.0f;
    [btnCancel layer].masksToBounds = YES;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) validateForm
{
    BOOL returnValue = true;
    NSString* textValue = [txtDeclarationName.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if([textValue isEqualToString:@""])
    {
        returnValue = false;
        [Util showMessage:@"Ingrese Declaración de Extracción" title:@"Mensaje"];
    }
    return returnValue;
}

- (IBAction)sendDeclarationName:(id)sender{
    if([self validateForm])
        [delegate addExtracction:[txtDeclarationName.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
}

- (IBAction)cancelForm:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
