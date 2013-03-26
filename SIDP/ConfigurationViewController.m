//
//  ConfigurationViewController.m
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 26/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "ConfigurationViewController.h"

@interface ConfigurationViewController ()

@end

@implementation ConfigurationViewController
@synthesize cboCompany;
@synthesize cboPlant;
@synthesize btnAccept;
@synthesize btnCancel;
@synthesize listCompany;
@synthesize selectedCompany;
@synthesize selectedPlant;

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

//funciones de inicializacion y validacion de formularios
- (void) initListDependences{
    listCompany = [[perupez_hrm_company new] getList];
    
    perupez_hp_plant* objPlant = [perupez_hp_plant new];
    for(NSMutableDictionary* company in listCompany)
    {
        NSString* pkCompany = [company valueForKey:@"pkCompany"];
        NSMutableArray* listPlant = [objPlant getListPlantByCompany:pkCompany];
        [company setObject:listPlant forKey:@"listPlant"];
    }
    
    perupez_def_config_param* config = [perupez_def_config_param new];
    perupez_hp_plant* plant = [perupez_hp_plant new];
    perupez_hrm_company* company = [perupez_hrm_company new];
    
    [config set_configParamId:@"hp.ipad.company"];
    NSDictionary* configCompany = [config getConfigParamById];
    [company set_pkCompany:[configCompany valueForKey:@"configParamIntValue"]];
    selectedCompany = [company getCompany];
    cboCompany.text = [selectedCompany valueForKey:@"companyName"];
    [selectedCompany setObject:[plant getListPlantByCompany:[company get_pkCompany]] forKey:@"listPlant"];
    
    [config set_configParamId:@"hp.ipad.plant"];
    NSDictionary* configPlant = [config getConfigParamById];
    [plant set_pkPlant:[configPlant valueForKey:@"configParamIntValue"]];
    selectedPlant = [plant getPlant];
    cboPlant.text = [selectedPlant valueForKey:@"plantName"];
}

- (void) paintView
{
    [[btnAccept layer] setCornerRadius:10.0f];
    [[btnAccept layer] setMasksToBounds: YES];
    [[btnCancel layer] setCornerRadius:10.0f];
    [[btnCancel layer] setMasksToBounds: YES];
}


- (BOOL) validateForm
{
    NSString* message = @"";
    BOOL returnValue = true;
    NSString* valueCompany = [cboCompany.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString* valuePlant = [cboPlant.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if([valueCompany isEqualToString:@""])
    {
        message = @"Empresa, ";
    }
    
    if([valuePlant isEqualToString:@""])
    {
        message = @"Planta";
    }
    
    if(![message isEqualToString:@""])
    {
        returnValue = false;
        NSCharacterSet* setchar = [NSCharacterSet characterSetWithCharactersInString:@", "];
        message = [message stringByTrimmingCharactersInSet:setchar];
        message = [@"Complete los siguientes datos: " stringByAppendingString:message];
        [Util showMessage:message title:@"Mensaje"];
    }
    return returnValue;
}

- (IBAction)saveConfigParameter:(id)sender
{
    BOOL success;
    if([self validateForm]){
        perupez_def_config_param* config = [perupez_def_config_param new];
        NSString* fkCompany = [selectedCompany valueForKey:@"pkCompany"];
        NSString* fkPlant = [selectedPlant valueForKey:@"pkPlant"];
        
        //guardamos empresa del ipad
        [config set_configParamId:@"hp.ipad.company"];
        [config set_configParamIntValue:fkCompany];
        success = [config updateConfigParamById];
        //guardamos empresa del ipad
        [config set_configParamId:@"hp.ipad.plant"];
        [config set_configParamIntValue:fkPlant];
        success = [config updateConfigParamById];
        
        if(success)
            [Util showMessage:@"Configuración del dispositivo completa" title:@"Mensaje"];
        else
            [Util showMessage:@"Problemas al configurar el dispositivo" title:@"Mensaje"];
    }
}


- (IBAction)cancelForm:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
// Implementacion de los metodos del delegado del StComboboxDelegate:
- (NSString*)stComboText:(STComboText*)stComboText textForRow:(NSUInteger)row {
    if(stComboText == self.cboCompany)
    {
        return [[listCompany objectAtIndex:row] valueForKey:@"companyName"];
    }
    else if(stComboText == self.cboPlant)
    {
        NSMutableArray* listPlant = [selectedCompany valueForKey:@"listPlant"];
        return [[listPlant objectAtIndex:row] valueForKey:@"plantName"];
    }
    return nil;
}

- (NSInteger)stComboText:(STComboText*)stComboTextNumberOfOptions {
    if(stComboTextNumberOfOptions == self.cboCompany)
    {
        return [listCompany count];
    }
    else if(stComboTextNumberOfOptions == self.cboPlant)
    {
        NSMutableArray* listPlant = [selectedCompany valueForKey:@"listPlant"];
        return [listPlant count];
    }
    return 0;
}

- (void)stComboText:(STComboText*)stComboText didSelectRow:(NSUInteger)row {
    if(stComboText == self.cboCompany)
    {
        selectedCompany = [listCompany objectAtIndex:row];
        stComboText.text = [selectedCompany valueForKey:@"companyName"];
        cboPlant.text = @"";
    }
    else if(stComboText == self.cboPlant)
    {
        NSMutableArray* listPlant= [selectedCompany valueForKey:@"listPlant"];
        selectedPlant = [listPlant objectAtIndex:row];
        stComboText.text = [selectedPlant valueForKey:@"plantName"];
    }
    else {
        stComboText.text = @"";
    }
}
@end
