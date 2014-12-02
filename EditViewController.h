//
//  EditViewController.h
//  TableView
//
//  Created by Eduardo Lombardi on 21/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController
{
    NSString * nome;
    NSString * sobrenome;
    NSString * email;
    NSString * telefone;
    NSString * endereco;
}
@property (weak, nonatomic) IBOutlet UIImageView *imagem;
- (IBAction)btnaddPhoto:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segcontrol;
@property (weak, nonatomic) IBOutlet UIButton *bntFoto;

@end
