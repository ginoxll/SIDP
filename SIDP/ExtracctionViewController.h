//
//  ExtracctionViewController.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 23/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import "Util.h"
@class  ExtracctionViewController;

@protocol ModalExtracctionDelegate <NSObject>
- (void) addExtracction:(NSString*)declarationName;
@end

@interface ExtracctionViewController : UIViewController
@property (nonatomic, retain) IBOutlet UITextField* txtDeclarationName;
@property (nonatomic, weak) IBOutlet id <ModalExtracctionDelegate> delegate;

@property (nonatomic, retain) IBOutlet UIButton* btnAccept;
@property (nonatomic, retain) IBOutlet UIButton* btnCancel;

- (IBAction)sendDeclarationName:(id)sender;
- (IBAction)cancelForm:(id)sender;

@end
