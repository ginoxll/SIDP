//
//  SuplierDataViewController.m
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 24/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "SuplierDataViewController.h"

@interface SuplierDataViewController ()

@end

@implementation SuplierDataViewController
@synthesize cboRawMaterial;
@synthesize cboProduct;
@synthesize cboPresentation;
@synthesize cboReception;
@synthesize cboWeight;

@synthesize listRawMaterial;
@synthesize listProduct;
@synthesize listPresentation;
@synthesize listWeight;
@synthesize listReception;
@synthesize listEmployee;

@synthesize selectedRawMaterial;
@synthesize selectedProduct;
@synthesize selectedPresentation;
@synthesize selectedWeight;
@synthesize selectedReception;

@synthesize txtStartHour;
@synthesize txtReception;
@synthesize txtWeight;
@synthesize txtEndHour;

@synthesize employeeTable;
@synthesize employeePanel;
@synthesize btnDistribute;


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
    [self paintView];
    
    listRawMaterial = [[perupez_hp_raw_material new] getList];
    listProduct = [[perupez_hp_product new] getList];
    listPresentation = [[perupez_hp_presentation new] getList];
    listWeight = [DocumentType listDocumentType];
    listReception = [DocumentType listDocumentType];
    listEmployee = [NSMutableArray new];
	// Do any additional setup after loading the view.
}


- (void) paintView
{
    [[employeePanel layer] setBorderWidth:1.0f];
    [[employeePanel layer] setCornerRadius:4.0f];
    [[btnDistribute layer] setCornerRadius:10.0f];
    [[btnDistribute layer] setMasksToBounds: YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Implementacion de las acciones
- (IBAction)removeEmployee:(id)sender
{
    NSIndexPath* indexPath = [employeeTable indexPathForSelectedRow];
    NSString* message = [[listEmployee objectAtIndex:[indexPath row]] valueForKey:@"personFullName"];
    [Util messageConfirm:message delegate:self];
}

// implementacion del delegado de UiAlertView
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 1){
        NSIndexPath* indexPath = [employeeTable indexPathForSelectedRow];
        NSArray* path = [NSArray arrayWithObject:[employeeTable indexPathForSelectedRow]];
        [listEmployee removeObjectAtIndex:[indexPath row]];
        [employeeTable deleteRowsAtIndexPaths:path withRowAnimation:UITableViewRowAnimationFade];
    }
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
    if(stComboText == self.cboRawMaterial)
    {
        return [[listRawMaterial objectAtIndex:row] valueForKey:@"rawMaterialName"];
    }
    else if(stComboText == self.cboProduct)
    {
        return [[listProduct objectAtIndex:row] valueForKey:@"productDescription"];
    }
    else if(stComboText == self.cboPresentation)
    {
        return [[listPresentation objectAtIndex:row] valueForKey:@"presentationName"];
    }
    else if(stComboText == self.cboWeight)
    {
        return [[listWeight objectAtIndex:row] valueForKey:@"documentTypeName"];
    }
    else if(stComboText == self.cboReception)
    {
        return [[listReception objectAtIndex:row] valueForKey:@"documentTypeName"];
    }
    return nil;
}

- (NSInteger)stComboText:(STComboText*)stComboTextNumberOfOptions {
    if(stComboTextNumberOfOptions == self.cboRawMaterial)
    {
        return [listRawMaterial count];
    }
    else if(stComboTextNumberOfOptions == self.cboProduct)
    {
        return [listProduct count];
    }
    else if(stComboTextNumberOfOptions == self.cboPresentation)
    {
        return [listPresentation count];
    }
    else if(stComboTextNumberOfOptions == self.cboWeight)
    {
        return [listWeight count];
    }
    else if(stComboTextNumberOfOptions == self.cboReception)
    {
        return [listReception count];
    }
    return 0;
}

- (void)stComboText:(STComboText*)stComboText didSelectRow:(NSUInteger)row {
    if(stComboText == self.cboRawMaterial)
    {
        selectedRawMaterial = [listRawMaterial objectAtIndex:row];
        stComboText.text = [[listRawMaterial objectAtIndex:row] valueForKey:@"rawMaterialName"];
    }
    else if(stComboText == self.cboProduct)
    {
        selectedProduct = [listProduct objectAtIndex:row];
        stComboText.text = [[listProduct objectAtIndex:row] valueForKey:@"productDescription"];
    }
    else if(stComboText == self.cboPresentation)
    {
        selectedPresentation = [listPresentation objectAtIndex:row];
        stComboText.text = [[listPresentation objectAtIndex:row] valueForKey:@"presentationName"];
    }
    else if(stComboText == self.cboWeight)
    {
        selectedWeight = [listWeight objectAtIndex:row];
        stComboText.text = [[listWeight objectAtIndex:row] valueForKey:@"documentTypeName"];
    }
    else if(stComboText == self.cboReception)
    {
        selectedReception = [listReception objectAtIndex:row];
        stComboText.text = [[listReception objectAtIndex:row] valueForKey:@"documentTypeName"];
    }
    else {
        stComboText.text = @"";
    }
}

//Implementacion de los metodos del delegado STDateTextDelegate:
- (void)stDateText:(STDateText*)STDateText dateChangedTo:(NSDate*)date{
    NSDateFormatter* formater = [[NSDateFormatter alloc] init];
    [formater setDateFormat:@"d-M-yyyy"];
    STDateText.text = [formater stringFromDate:date];
}

// Metodos del protocolo del tableview:
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [listEmployee count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableDictionary* employee = [listEmployee objectAtIndex:[indexPath row]];
    static NSString *CellIdentifier = @"Cell";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    UITableViewCell*  cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    cell.textLabel.text = [employee valueForKey:@"personFullName"];
    cell.detailTextLabel.text = [perupez_hrm_employee getDetailEmployee:[listEmployee objectAtIndex:[indexPath row]]];
    // Configure the cell...
    return cell;
}

//implementacion de los metodos del delegado: EmployeeViewSelectionDelegate
- (void) addEmployeesFromSelection:(NSMutableArray *)selectedEmployees
{
    NSString* message = @"";
    for(NSMutableDictionary* employee in selectedEmployees)
    {
        NSString* pkEmployee = [employee valueForKey:@"pkEmployee"];
        NSMutableDictionary* auxEmployee = [self searchEmployee:pkEmployee listSource:listEmployee];
        if(auxEmployee != nil)
        {
            message = [message stringByAppendingString:[employee valueForKey:@"personFullName"]];
            message = [message stringByAppendingString:@", "];
        }
        else{
            [listEmployee addObject:employee];
        }
    }
    
    if(![message isEqualToString:@""]){
        message = [@"Ya fueron selecionados: " stringByAppendingString:message];
        [Util showMessage:message title:@"Mensaje"];
    }
    [employeeTable reloadData];
    [self dismissModalViewControllerAnimated:YES];
}

// funciones de validacion de seleccion:
- (NSMutableDictionary*)searchEmployee:(NSString*)pkEmployee listSource:(NSMutableArray*)list
{
    NSMutableDictionary* var = nil;
    for(NSMutableDictionary* employee in list)
    {
        NSString* varPkEmployee = [employee valueForKey:@"pkEmployee"];
        if([varPkEmployee isEqualToString:pkEmployee])
        {
            var = employee;
            break;
        }
    }
    return var;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"employeeTransition"])
    {
        EmployeeViewController* varSegue =  segue.destinationViewController;
        varSegue.delegate = self;
    }
}
@end
