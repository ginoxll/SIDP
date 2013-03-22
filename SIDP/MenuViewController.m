//
//  MenuViewController.m
//  scdp_touch
//
//  Created by Miguel Angel Vásquez Jiménez on 13/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize menuPanel;
@synthesize cboTurn;
@synthesize txtDate;
@synthesize listTurn;
@synthesize selectdTurn;

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
    [[menuPanel layer] setCornerRadius:10.0f];
    listTurn = [perupez_hp_turn listTurn];
    txtDate.datePickerMode = STDatePickerModeDate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Implementacion de los metodos del delegado del textfield:
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if([textField isKindOfClass:[STComboText class]]) {
        [(STComboText*)textField showOptions];
        return NO;
    }
    else if([textField isKindOfClass:[STDateText class]])
    {
        [(STDateText*)textField showDatePicker];
        return NO;
    }
    return YES;
}


// Implementacion de los metodos del delegado del StComboboxDelegate:
- (NSString*)stComboText:(STComboText*)stComboText textForRow:(NSUInteger)row {
    if(stComboText==self.cboTurn) {
        return [[listTurn objectAtIndex:row] description];
    }
    return nil;
}

- (NSInteger)stComboText:(STComboText*)stComboTextNumberOfOptions {
    if(stComboTextNumberOfOptions == self.cboTurn) {
        return [listTurn count];
    }
    return 0;
}

- (void)stComboText:(STComboText*)stComboText didSelectRow:(NSUInteger)row {
    if(stComboText == self.cboTurn) {
        selectdTurn = [listTurn objectAtIndex:row];
        self.cboTurn.text = [[listTurn objectAtIndex:row] description];
    } else {
        self.cboTurn.text = @"";
    }
}

//Implementacion de los metodos del delegado STDateTextDelegate:
- (void)stDateText:(STDateText*)STDateText dateChangedTo:(NSDate*)date{
    NSDateFormatter* formater = [[NSDateFormatter alloc] init];
    [formater setDateFormat:@"d-M-yyyy"];
    self.txtDate.text = [formater stringFromDate:date];
}

@end
