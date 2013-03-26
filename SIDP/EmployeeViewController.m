//
//  EmployeeViewController.m
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 25/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "EmployeeViewController.h"

@interface EmployeeViewController ()

@end

@implementation EmployeeViewController

@synthesize employeePanel;
@synthesize filterPanel;
@synthesize txtDocumentType;
@synthesize txtEmployeeName;
@synthesize cboCompany;
@synthesize cboPosition;
@synthesize btnSearch;
@synthesize employeeTable;
@synthesize btnShowAll;

@synthesize listEmployee;
@synthesize listSelectedEmployee;
@synthesize listCompany;
@synthesize selectedCompany;
@synthesize selectedPosition;

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
    [self initListDependences];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) initListDependences{
    listCompany = [[perupez_hrm_company new] getList];
    listEmployee  = [[perupez_hrm_employee new] getListEmployee];
    listSelectedEmployee = [NSMutableArray new];
    
    perupez_hrm_company_position*objPosition = [perupez_hrm_company_position new];
    for(NSMutableDictionary* company in listCompany)
    {
        NSString* pkCompany = [company valueForKey:@"pkCompany"];
        NSMutableArray* listPosition = [objPosition getListPositionByCompany:pkCompany];
        [company setObject:listPosition forKey:@"listPosition"];
    }
}

- (void) paintView
{
    [[employeePanel layer] setBorderWidth:1.0f];
    [[employeePanel layer] setCornerRadius:4.0f];
    [[filterPanel layer] setBorderWidth:1.0f];
    [[filterPanel layer] setCornerRadius:8.0f];
    [[filterPanel layer] setBorderColor: [UIColor blackColor].CGColor];
    [[btnSearch layer] setCornerRadius:10.0f];
    [[btnSearch layer] setMasksToBounds: YES];
    [[btnShowAll layer] setCornerRadius:10.0f];
    [[btnShowAll layer] setMasksToBounds: YES];
}


// Implementacion de las acciones:
- (IBAction)employeeSearch:(id)sender
{
    NSString *valueSearch, *identityDocument, *fkCompany, *fkPosition;
    valueSearch = [txtEmployeeName.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    identityDocument = [txtDocumentType.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    fkCompany = [selectedCompany valueForKey:@"pkCompany"];
    fkPosition = [selectedPosition valueForKey:@"pkCompanyPosition"];
    
    perupez_hrm_employee* employee = [perupez_hrm_employee new];
    [employee set_fkCompany:fkCompany];
    [employee set_fkCompanyPosition:fkPosition];
    [employee setValueSearch:valueSearch];
    [employee setDocumentSearch:identityDocument];
    listEmployee = [employee getListEmployee];
    [self retainSelected];
    [employeeTable reloadData];
}

- (IBAction)showAllEmployee:(id)sender
{
    txtEmployeeName.text = @"";
    txtDocumentType.text = @"";
    cboCompany.text = @"";
    cboPosition.text = @"";
    selectedCompany = nil;
    selectedPosition = nil;
    listEmployee = [[perupez_hrm_employee new] getListEmployee];
    [self retainSelected];
    [employeeTable reloadData];
}

- (IBAction)sendSelectedEmployees:(id)sender
{
    [self.delegate addEmployeesFromSelection:listSelectedEmployee];
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
    return YES;
}

// Implementacion de los metodos del delegado del StComboboxDelegate:
- (NSString*)stComboText:(STComboText*)stComboText textForRow:(NSUInteger)row {
    if(stComboText == self.cboCompany)
    {
        return [[listCompany objectAtIndex:row] valueForKey:@"companyName"];
    }
    else if(stComboText == self.cboPosition)
    {
        NSMutableArray* listPosition = [selectedCompany valueForKey:@"listPosition"];
        return [[listPosition objectAtIndex:row] valueForKey:@"positionName"];
    }
    return nil;
}

- (NSInteger)stComboText:(STComboText*)stComboTextNumberOfOptions {
    if(stComboTextNumberOfOptions == self.cboCompany)
    {
        return [self.listCompany count];
    }
    else if(stComboTextNumberOfOptions == self.cboPosition)
    {
        NSMutableArray* listPosition = [selectedCompany valueForKey:@"listPosition"];
        return [listPosition count];
    }
    return 0;
}

- (void)stComboText:(STComboText*)stComboText didSelectRow:(NSUInteger)row {
    if(stComboText == self.cboCompany)
    {
        selectedCompany = [listCompany objectAtIndex:row];
        stComboText.text = [selectedCompany valueForKey:@"companyName"];
        cboPosition.text = @"";
    }
    else if(stComboText == self.cboPosition)
    {
        NSMutableArray* listPosition = [selectedCompany valueForKey:@"listPosition"];
        selectedPosition = [listPosition objectAtIndex:row];
        stComboText.text = [selectedPosition valueForKey:@"positionName"];
    }
    else {
        stComboText.text = @"";
    }
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

    UIImage* cellImage = [UIImage imageNamed:@"imgOff"];
    if([[employee valueForKey:@"isSelected"] intValue] == 1)
        cellImage = [UIImage imageNamed:@"imgOn"];
    
    cell.imageView.image = cellImage;
    // Configure the cell...
    
    cell.textLabel.text = [employee valueForKey:@"personFullName"];
    cell.detailTextLabel.text = [perupez_hrm_employee getDetailEmployee:[listEmployee objectAtIndex:[indexPath row]]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
    NSInteger row = [indexPath row];
    UIImage*  cellImage;
    NSMutableDictionary* employee = [listEmployee objectAtIndex:row];
    if([[employee valueForKey:@"isSelected"] intValue] == 1){
        cellImage = [UIImage imageNamed:@"imgOff"];
        [employee setObject:@"0" forKey:@"isSelected"];
        [listSelectedEmployee removeObject:[self searchEmployee:[employee valueForKey:@"pkEmployee"] listSource:listSelectedEmployee]];
    }
    else{
        cellImage = [UIImage imageNamed:@"imgOn"];
        [employee setObject:@"1" forKey:@"isSelected"];
        [listSelectedEmployee addObject:employee];
    }
    cell.imageView.image = cellImage;
}

- (void) retainSelected
{
    for(NSMutableDictionary* employee in listSelectedEmployee)
    {
        NSString* pkEmployee = [employee valueForKey:@"pkEmployee"];
        NSMutableDictionary* auxSelected = [self searchEmployee:pkEmployee listSource:listEmployee];
        if(auxSelected != nil)
        {
            [auxSelected setObject:@"1" forKey:@"isSelected"];
        }
    }
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
@end
