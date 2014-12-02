//
//  Contato.h
//  TableView
//
//  Created by Eduardo Lombardi on 20/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contato : NSObject {
    NSString * nome;
    NSString * sobrenome;
    long telefone;
    NSString *email;
    NSString *endereco;
}
-(NSString *) nome;
@property(nonatomic,strong) NSString * nome;
@property(nonatomic,strong) NSString * email;
@property(nonatomic,strong) NSString * endereco;
@property(nonatomic,strong)NSString * sobrenome;
@property(nonatomic) long telefone;
-(id) initWithNome:(NSString *) nomer sobrenome:(NSString *)sobrenomer eMail:(NSString *) emailr Endereco:(NSString *)enderecor Telefone:(long) telefoner;
@end
