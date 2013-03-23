//
//  ExtracctionViewController.h
//  SIDP
//
//  Created by Miguel Angel Vásquez Jiménez on 23/03/13.
//  Copyright (c) 2013 GinoX. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  ExtracctionViewController;

@protocol ModalExtracctionDelegate <NSObject>
- (void) addExtracction:(NSString*)declarationName;
@end

@interface ExtracctionViewController : UIViewController
@property (nonatomic, retain) IBOutlet UITextField* txtDeclarationName;
@property (nonatomic, weak) id <ModalExtracctionDelegate> delegate;

- (IBAction)sendDeclarationName:(id)sender;

@end
