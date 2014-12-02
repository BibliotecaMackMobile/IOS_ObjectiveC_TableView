//
//  Contatos.h
//  TableView
//
//  Created by Eduardo Lombardi on 19/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contato.h"
@interface Contatos : NSObject
{
    NSMutableArray * contatos;
}
+(Contatos *) instancia;
-(id) iniciar;
-(Contato *) addItemWithNome:(NSString *) nomea sobrenome:(NSString *)sobrenomea email:(NSString *)emaila endereco:(NSString *)enderecoa telefone:(long) telefonea;
-(NSMutableArray *)contatos;
- (NSString *)description;
- (NSString *)descriptiont;
@property(nonatomic,strong) NSMutableArray * contatos;
@end
