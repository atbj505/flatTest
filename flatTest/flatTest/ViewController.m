//
//  ViewController.m
//  flatTest
//
//  Created by Robert on 15/3/3.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"
#import "FlatUIKit.h"

#define GAP 10

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    //Button
    [self addButton];
    //TextField
    [self addTextField];
    //SegmentedControls
    [self addSegmentedControls];
    //Switches
    [self addSwitches];
}
- (void)addButton{
    FUIButton *button = [[FUIButton alloc]initWithFrame:CGRectMake(0, 20, 100, 50)];
    button.buttonColor = [UIColor turquoiseColor];
    button.shadowColor = [UIColor greenSeaColor];
    button.shadowHeight = 3.0f;
    button.cornerRadius = 6.0f;
    [button setTitle:@"HELLO" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [button setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
}
- (void)addTextField{
    FUITextField *textField = [[FUITextField alloc]initWithFrame:CGRectMake(0, 70 + GAP, 100, 50)];
    textField.font = [UIFont flatFontOfSize:16];
    textField.backgroundColor = [UIColor clearColor];
    textField.edgeInsets = UIEdgeInsetsMake(4.0f, 15.0f, 4.0f, 15.0f);
    textField.textFieldColor = [UIColor whiteColor];
    textField.borderColor = [UIColor turquoiseColor];
    textField.borderWidth = 2.0f;
    textField.cornerRadius = 3.0f;
    [self.view addSubview:textField];
}
- (void)addSegmentedControls{
    FUISegmentedControl *segmented = [[FUISegmentedControl alloc]initWithItems:@[@"0",@"1",@"2"]];
    segmented.frame = CGRectMake(0, 120 + GAP*2, 100, 50);
    segmented.selectedFont = [UIFont boldFlatFontOfSize:16];
    segmented.selectedFontColor = [UIColor cloudsColor];
    segmented.deselectedFont = [UIFont flatFontOfSize:16];
    segmented.deselectedFontColor = [UIColor cloudsColor];
    segmented.selectedColor = [UIColor amethystColor];
    segmented.deselectedColor = [UIColor silverColor];
    segmented.dividerColor = [UIColor midnightBlueColor];
    segmented.cornerRadius = 5.0;
    [self.view addSubview:segmented];
}
- (void)addSwitches{
    FUISwitch *fuiswitch = [[FUISwitch alloc]initWithFrame:CGRectMake(0, 170 + GAP *3, 100, 50)];
    fuiswitch.onColor = [UIColor turquoiseColor];
    fuiswitch.offColor = [UIColor cloudsColor];
    fuiswitch.onBackgroundColor = [UIColor midnightBlueColor];
    fuiswitch.offBackgroundColor = [UIColor silverColor];
    fuiswitch.offLabel.font = [UIFont boldFlatFontOfSize:14];
    fuiswitch.onLabel.font = [UIFont boldFlatFontOfSize:14];
    [self.view addSubview:fuiswitch];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
