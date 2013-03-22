//
//  SincronizeViewController.m
//  scdp_touch
//
//  Created by Miguel Angel Vásquez Jiménez on 19/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#import "SincronizeViewController.h"

@interface SincronizeViewController ()

@end

@implementation SincronizeViewController
@synthesize selectedTables;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setRoot:[self initializeListTables]];
    selectedTables = [NSMutableArray new];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)sincronizedAction:(id)sender
{
    NSString* auxVar = @"";
    for(DataTable* table in selectedTables)
    {
        [auxVar stringByAppendingString:[table description]];
    }
    [Util showMessage:auxVar title:@"Tablas seleccionadas"];
}

/*
 * Inicializa la lista de tablas de matenimiento con el elemento
 * QuickCode QBooleanElement
 */
- (QRootElement *) initializeListTables
{
    QRootElement *sincronizedForm = [[QRootElement alloc] init];
    sincronizedForm.title = @"Sincronizar Tablas de Mantenimiento";
    QSection *sincronizedSection = [[QSection alloc] initWithTitle:@"Tablas a Sincronizar"];
    
    NSMutableArray* listTables = [DataTable listTableMaintenance];
    
    for(DataTable* table in listTables)
    {
        QBooleanElement* tableOptionElement = [[QBooleanElement alloc] initWithTitle: [table description] BoolValue:false];
        [tableOptionElement setObject: table];
        
        tableOptionElement.onImage = [UIImage imageNamed:@"imgOn"];
        tableOptionElement.offImage = [UIImage imageNamed:@"imgOff"];
        tableOptionElement.onValueChanged = ^(QRootElement *element){
            QBooleanElement* selectTable = (QBooleanElement*) element;
            
            if([selectTable boolValue] == YES)
                [self addSelectedElement:[selectTable object]];
            else
                [self removeUnselectedElement:[selectTable object]];
        };
        [sincronizedSection addElement:tableOptionElement];
    }
    
    [sincronizedForm addSection:sincronizedSection];
    return sincronizedForm;
}

- (void) addSelectedElement:(id)element
{
    if([selectedTables indexOfObject:element] != -1)
        [selectedTables addObject:element];
}

- (void) removeUnselectedElement:(id)element
{
    [selectedTables removeObject: element];
}
@end
