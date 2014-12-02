//
//  DetailViewController.h
//  TableView
//
//  Created by Eduardo Lombardi on 21/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    NSString * nome;
    NSString * sobrenome;
    NSString * email;
    NSString * telefone;
    NSString * endereco;
    
}
@property (weak, nonatomic) IBOutlet UILabel *nomel;

@property (weak, nonatomic) IBOutlet UILabel *emaill;
@property (weak, nonatomic) IBOutlet UILabel *enderecol;
- (IBAction)btnVoltar:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *telefonel;
-(void) insert:(long) valor;
@end
