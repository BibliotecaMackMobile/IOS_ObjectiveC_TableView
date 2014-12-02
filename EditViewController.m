//
//  EditViewController.m
//  TableView
//
//  Created by Eduardo Lombardi on 21/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import "EditViewController.h"
#import "Contato.h"
#import "Contatos.h"
@interface EditViewController ()

@end

@implementation EditViewController
@synthesize imagem;
@synthesize segcontrol;
@synthesize bntFoto;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)clique:(id)sender {
    UIImagePickerController * picker = [[UIImagePickerController alloc] init];
    picker.delegate=self;
    if([segcontrol selectedSegmentIndex ]== 0 )
        [picker setSourceType:(UIImagePickerControllerSourceTypePhotoLibrary)];
    else
        [picker setSourceType:(UIImagePickerControllerSourceTypeCamera)];
    [bntFoto setHidden:YES];
    [self presentViewController:picker animated:YES completion:Nil];
    
    
}

-(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    
    imagem.image = image;
    if ([segcontrol selectedSegmentIndex ]== 0)
        UIImageWriteToSavedPhotosAlbum(image,
                                       self,
                                       nil,//@selector(image:finishedSavingWithError:contextInfo:),
                                       nil);
    
    
}
- (IBAction)cancelarbtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    long valor = 0;
    // Do any additional setup after loading the view from its nib.
    nome = [[[[Contatos instancia]contatos] objectAtIndex:valor] nome];
    NSLog(@"%@",[[[[Contatos instancia]contatos] objectAtIndex:valor] nome]);
    sobrenome = [[[[Contatos instancia]contatos] objectAtIndex:valor] sobrenome];
    email = [[[[Contatos instancia]contatos] objectAtIndex:valor] email];
    telefone =  [NSString stringWithFormat: @"%d", [[[[Contatos instancia]contatos] objectAtIndex:valor] telefone]];
    //[telefonel setText:[[[[Contatos instancia]contatos] objectAtIndex:valor] telefone]];
    endereco = [[[[Contatos instancia]contatos] objectAtIndex:valor] endereco];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnaddPhoto:(id)sender {
}
@end
