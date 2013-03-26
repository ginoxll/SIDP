//
//  ReceptionViewController.m
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 22/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "ReceptionViewController.h"

@interface ReceptionViewController ()

@end

@implementation ReceptionViewController

@synthesize extracctionPanel;
@synthesize extracctionTable;

@synthesize txtLote;
@synthesize txtMatricula;
@synthesize txtProcedence;
@synthesize txtSupplier;

@synthesize cboCompany;

@synthesize listCompany;
@synthesize listExtracction;

@synthesize selectedCompany;


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
    listCompany = [perupez_hrm_company listCompany];
    listExtracction = [[NSMutableArray alloc] initWithObjects:@"Primera declaracion", @"segunda declaración", nil];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) paintView
{
    [[extracctionPanel layer] setBorderWidth:1.0f];
    [[extracctionPanel layer] setCornerRadius:4.0f];
}

// Implementacion de las acciones
- (IBAction)removeExtracctionDeclaration:(id)sender
{
    NSIndexPath* indexPath = [extracctionTable indexPathForSelectedRow];
    NSString* message = [listExtracction objectAtIndex:[indexPath row]];
    [Util messageConfirm:message delegate:self];
}

// implementacion del delegado de UiAlertView
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 1){
        NSIndexPath* indexPath = [extracctionTable indexPathForSelectedRow];
        NSArray* path = [NSArray arrayWithObject:[extracctionTable indexPathForSelectedRow]];
        [listExtracction removeObjectAtIndex:[indexPath row]];
        [extracctionTable deleteRowsAtIndexPaths:path withRowAnimation:UITableViewRowAnimationFade];
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
    if(stComboText==self.cboCompany)
    {
        return [[listCompany objectAtIndex:row] description];
    }
    return nil;
}

- (NSInteger)stComboText:(STComboText*)stComboTextNumberOfOptions {
    if(stComboTextNumberOfOptions == self.cboCompany) {
        return [listCompany count];
    }
    return 0;
}

- (void)stComboText:(STComboText*)stComboText didSelectRow:(NSUInteger)row {
    if(stComboText == self.cboCompany) {
        selectedCompany = [listCompany objectAtIndex:row];
        stComboText.text = [[listCompany objectAtIndex:row] description];
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
    return [listExtracction count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    UITableViewCell*  cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    // Configure the cell...
    cell.textLabel.text = [listExtracction objectAtIndex:[indexPath row]];
    return cell;
}

// Metodo del protocolo de la ventana Modal:
- (void) addExtracction:(NSString *)declarationName
{
    if(![self verifyDeclarationIsDuplicated:declarationName])
    {
        [listExtracction addObject:declarationName];
        [extracctionTable reloadData];
        [self dismissModalViewControllerAnimated:YES];
    }
    else{
        [Util showMessage:@"Ya agrego Declaración de Extracción" title:@"Mensaje"];
    }
}

 //funciones de validacion de formularios:
- (BOOL) verifyDeclarationIsDuplicated:(NSString*) declarationName
{
    BOOL returnValue = false;
    for(NSString* varDeclaration in listExtracction)
    {
        if([varDeclaration isEqual:declarationName])
        {
            returnValue = true;
            break;
        }
    }
    return returnValue;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"modelExtracction"])
    {
        ExtracctionViewController* controller = segue.destinationViewController;
        controller.delegate = self;
    }
}
@end
