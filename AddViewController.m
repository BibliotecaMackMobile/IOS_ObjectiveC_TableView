//
//  AddViewController.m
//  TableView
//
//  Created by Eduardo Lombardi on 20/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import "AddViewController.h"
#import "Contato.h"
#import "Contatos.h"
#import "TableViewController.h"
@interface AddViewController ()

@end

@implementation AddViewController

@synthesize txtEmail;
@synthesize txtEndereco;
@synthesize txtNome;
@synthesize txtSobrenome;
@synthesize txtTelefones;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [txtNome becomeFirstResponder];
    [super viewDidLoad];
    txtTelefones.delegate = self;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn: (UITextField *)textField {
    NSString * telefone = [txtTelefones text];
    long telefonel = [telefone longLongValue];
    if([txtNome text].length != 0) {
    [txtSobrenome becomeFirstResponder];
    }
    if([txtEndereco text].length== 0) {
    [txtEndereco becomeFirstResponder];
    }
    if([txtEmail text].length== 0) {
     [txtEmail becomeFirstResponder];
    }
    if([txtTelefones text].length== 0) {
     [txtTelefones becomeFirstResponder];
    }
    
    if([txtNome text].length !=0 && [txtEmail text].length !=0 && [txtEndereco text]!= 0 && [txtTelefones text].length != 0 && [txtSobrenome text].length !=0) {
        [[Contatos instancia] addItemWithNome:[txtNome text] sobrenome:[txtSobrenome text] email:[txtEmail text] endereco:[txtEndereco text] telefone:telefonel];
        [self dismissViewControllerAnimated:YES completion:nil ];
    }
    [textField resignFirstResponder];
    return YES;
}



- (IBAction)btnVoltar:(id)sender {
[self dismissViewControllerAnimated:YES completion:nil ];
}
@end
