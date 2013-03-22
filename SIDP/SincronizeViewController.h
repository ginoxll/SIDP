//
//  SincronizeViewController.h
//  scdp_touch
//
//  Created by Miguel Angel Vásquez Jiménez on 19/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

#import "DataTable.h"
#import "DocumentType.h"
#import "Util.h"

@interface SincronizeViewController : QuickDialogController
{
    NSMutableArray* selectedTables;
}

@property (nonatomic, retain) NSMutableArray* selectedTables;

- (IBAction)sincronizedAction:(id)sender;

@end
