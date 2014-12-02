//
//  DetailViewController.m
//  TableView
//
//  Created by Eduardo Lombardi on 21/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import "DetailViewController.h"
#import "Contato.h"
#import "Contatos.h"
@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize nomel;
@synthesize emaill;
@synthesize telefonel;
@synthesize enderecol;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void) insert:(long)valor {
    nome = [[[[Contatos instancia]contatos] objectAtIndex:valor] nome];
    NSLog(@"%@",[[[[Contatos instancia]contatos] objectAtIndex:valor] nome]);
    sobrenome = [[[[Contatos instancia]contatos] objectAtIndex:valor] sobrenome];
    email = [[[[Contatos instancia]contatos] objectAtIndex:valor] email];
    telefone =  [NSString stringWithFormat: @"%d", [[[[Contatos instancia]contatos] objectAtIndex:valor] telefone]];
    //[telefonel setText:[[[[Contatos instancia]contatos] objectAtIndex:valor] telefone]];
    endereco = [[[[Contatos instancia]contatos] objectAtIndex:valor] endereco];
    
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    NSString * espaco = [nome stringByAppendingString:@" "];
    NSString * nome_completo = [espaco stringByAppendingString:sobrenome];
    [nomel setText:nome_completo];
    [emaill setText:email];
    [enderecol setText:endereco];
    [telefonel setText:telefone];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnVoltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil ];
}
@end
