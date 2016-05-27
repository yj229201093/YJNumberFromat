//
//  ViewController.m
//  YJNumberFromat
//
//  Created by GongHui_YJ on 15/11/16.
//  Copyright © 2015年 GongHui_YJ. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Helper.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *bankCardTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.phoneTextField.delegate = self;
    self.bankCardTextField.delegate = self;
}


#pragma mark - UITextFieldDelegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (self.phoneTextField == textField)
    {
        return [UITextField phoneNumberFormatTextField:self.phoneTextField shouldChangeCharactersInRange:range replacementString:string];
    }
    else
    {
        return [UITextField bankNumberFormatTextField:self.bankCardTextField shouldChangeCharactersInRange:range replacementString:string];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
