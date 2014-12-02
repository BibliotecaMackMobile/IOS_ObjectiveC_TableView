//
//  AddViewController.h
//  TableView
//
//  Created by Eduardo Lombardi on 20/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtNome;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtEndereco;
@property (weak, nonatomic) IBOutlet UITextField *txtTelefones;
- (IBAction)btnIncluir:(id)sender;
- (IBAction)btnVoltar:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtSobrenome;

@end
