//
//  Contato.m
//  TableView
//
//  Created by Eduardo Lombardi on 20/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import "Contato.h"

@implementation Contato
@synthesize nome;
@synthesize sobrenome;
@synthesize telefone;
@synthesize email;
@synthesize endereco;
-(id) initWithNome:(NSString *) nomer sobrenome:(NSString *) sobrenomer eMail:(NSString *) emailr Endereco:(NSString *)enderecor Telefone:(long) telefoner {
    self=  [super init];
    if(self){
        nome = nomer;
        sobrenome = sobrenomer;
        email = emailr;
        endereco = enderecor;
        telefone = telefoner;
    }
    return self;
}
-(NSString *) nome{
    return nome;
}
- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ ,%@ ",
     sobrenome,
     nome];
    return descriptionString;
}
- (NSString *)descriptiont
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%lu ,%@ ",
     telefone,
     email];
    return descriptionString;
}

@end
