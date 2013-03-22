//
//  STComboText.m
//  ComboBox
//
//  Created by Neon Spark on 08/09/11.
//  Copyright 2011 http://Sugartin.info. All rights reserved.
//

#import "STComboText.h"

@interface STComboText () <UIPickerViewDelegate,UIPickerViewDataSource,UIActionSheetDelegate>  {
	UIActionSheet *action;
}
@property (nonatomic, strong) UIView *viewOfPicker;
@property (nonatomic, strong) UIPickerView *pkrView;
@property (nonatomic, strong) UIToolbar *tBar;
@end

@implementation STComboText

@synthesize delegateVCtr = _delegateVCtr;
@synthesize viewOfPicker = _viewOfPicker;
@synthesize pkrView = _pkrView;
@synthesize tBar = _tBar;
@synthesize defaultFirstSelect = _defaultFirstSelect;

#define kTagToolBar		1
#define kTagPicker		2

 
- (void)showOptions {

	if(!self.viewOfPicker) {
		self.viewOfPicker=[[UIView alloc] init]; //WithFrame:CGRectMake(0, 0, self.delegateVCtr.view.frame.size.width, 260)];
		self.pkrView=[[UIPickerView alloc] init]; //WithFrame:CGRectMake(0, 44, self.delegateVCtr.view.frame.size.width, 216)];
		self.pkrView.dataSource=self;
		self.pkrView.delegate=self;
		self.pkrView.tag=kTagPicker;
		self.pkrView.showsSelectionIndicator=YES;
		[self.pkrView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin];
		
		[self.viewOfPicker addSubview:self.pkrView];
		
		self.tBar=[[UIToolbar alloc] init ]; //WithFrame:CGRectMake(0, 0, self.delegateVCtr.view.frame.size.width, 44)];
		UIBarButtonItem *itemCancel=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(clear)];
		UIBarButtonItem *itemFlex=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
		UIBarButtonItem *itemDone=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
		[self.tBar setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin];
		[self.tBar setItems:[NSArray arrayWithObjects:itemCancel,itemFlex,itemDone, nil] animated:YES];
		self.tBar.tag=kTagToolBar;
		[self.viewOfPicker addSubview:self.tBar];
    

	//if(UIInterfaceOrientationIsLandscape([self.delegateVCtr interfaceOrientation])){
	//	self.viewOfPicker.frame=CGRectMake(700, 0, 800, 230);
	//	self.pkrView.frame=CGRectMake(0, 44, 800, 216);
	//	self.tBar.frame=CGRectMake(0, 0, 800, 44);
	//} else {
	//}
	
    CGFloat width = [self.delegateVCtr view].bounds.size.width;
    self.viewOfPicker.frame=CGRectMake(0, 700, width, 240);
    self.pkrView.frame=CGRectMake(0, 44, width, 216);
    self.tBar.frame=CGRectMake(0, 0, width, 44);
	
	[self.pkrView reloadAllComponents];
	
	
	if(self.defaultFirstSelect) {	
		[self.pkrView selectRow:0 inComponent:0 animated:YES];
		[self pickerView:self.pkrView didSelectRow:0 inComponent:0];
	}
	
    [self.delegateVCtr.view addSubview:self.viewOfPicker];
        [self.viewOfPicker setHidden:false];
    }
    else
        [self.viewOfPicker setHidden:false];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return [self.delegateVCtr stComboText:self];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [self.delegateVCtr stComboText:self textForRow:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	[self.delegateVCtr stComboText:self didSelectRow:row];
}

- (void)clear {
	[self setText:@""];
    [self.viewOfPicker setHidden:true];
}

- (void)done {
    [self.viewOfPicker setHidden:true];
}

- (void)changeToolBarColor:(UIColor*)color
{
	[self.tBar setTintColor:color];
}

@end
