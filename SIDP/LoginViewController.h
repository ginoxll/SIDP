//
//  LoginViewController.h
//  scdp_touch
//
//  Created by Miguel Angel Vásquez Jiménez on 13/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

@interface LoginViewController : UIViewController 
{
    UIView* loginPanel;
    UIView* bannerPanel;
    UIButton* btnLogin;
}

@property (nonatomic, retain) IBOutlet UIView* loginPanel;
@property (nonatomic, retain) IBOutlet UIView* bannerPanel;
@property (nonatomic, retain) IBOutlet UIButton* btnLogin;

@end
