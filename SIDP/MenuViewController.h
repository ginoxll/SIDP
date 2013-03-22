//
//  MenuViewController.h
//  scdp_touch
//
//  Created by Miguel Angel Vásquez Jiménez on 13/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//
#import "perupez_hp_turn.h"

@interface  MenuViewController: UIViewController <STComboTextDelegate, STDateTextDelegate, UITextFieldDelegate>
{
    NSMutableArray* listTurn;
    perupez_hp_turn* selectedTurn;
}

@property (retain, nonatomic) IBOutlet UIView* menuPanel;
@property (retain, nonatomic) IBOutlet STComboText* cboTurn;
@property (retain, nonatomic) IBOutlet STDateText* txtDate;
@property NSMutableArray* listTurn;
@property perupez_hp_turn* selectdTurn;

@end
