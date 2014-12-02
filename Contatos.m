//
//  Contatos.m
//  TableView
//
//  Created by Eduardo Lombardi on 19/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import "Contatos.h"
#import "Contato.h"
@implementation Contatos
@synthesize contatos;
+(Contatos *) instancia {
    static Contatos *contato = nil;
    if(!contato)
       contato = [[super allocWithZone:nil] init];
    
    return contato;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [self instancia];
}

-(id)iniciar
{
        contatos = [[NSMutableArray alloc]init];
    return contatos;
    
    }

-(Contato *)  addItemWithNome:(NSString *) nomea sobrenome: (NSString *) sobrenomea email:(NSString *)emaila endereco:(NSString *)enderecoa telefone:(long) telefonea;
{
    Contato * c = [[Contato alloc]initWithNome:nomea sobrenome:sobrenomea eMail:emaila Endereco:enderecoa Telefone:telefonea];
    [contatos addObject:c];
    NSLog(@"%@",c.nome);
    return c;
}
-(NSMutableArray *)contatos
{
    return contatos;
}
//- (NSString *)description {
//    return [[contatos objectAtIndex:0] nome];
//}

@end
